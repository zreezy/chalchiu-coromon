"""
Builds the GitHub wiki from the repository: the README (Home), the guides in docs/ and docs/game.

The repository stays the source of truth; the wiki is regenerated from it, so edit the README or
docs/*.md, or re-run `gamedocs.py generate`, then `gamedocs.py wiki`, rather than editing wiki pages by hand.

GitHub wikis are flat: every page is a top-level file and links use the page name without `.md`.
Relative links to pages that exist on the wiki are rewritten to wiki links; links to other files in
the repository become absolute GitHub links (images use raw.githubusercontent.com).
"""

from __future__ import annotations

import posixpath
import re
import subprocess
from pathlib import Path

MD_LINK = re.compile(r"(!?)\[([^\]]*)\]\(([^)\s]+)(\s+\"[^\"]*\")?\)")
HTML_SRC = re.compile(r"""(<img\b[^>]*\bsrc=)(["']?)([^"'\s>]+)\2""", re.IGNORECASE)

# Guides in docs/ -> wiki page (in sidebar order)
GUIDE_PAGES = {
    "docs/installation.md": "Installation",
    "docs/mods.md": "Mods",
    "docs/writing-mods.md": "Writing-Mods",
    "docs/releasing.md": "Releasing",
}


def repo_slug(repo_root: Path) -> str:
    url = subprocess.run(["git", "-C", str(repo_root), "remote", "get-url", "origin"],
                         capture_output=True, text=True, check=True).stdout.strip()
    match = re.search(r"github\.com[:/]+([^/]+/[^/]+?)(?:\.git)?$", url)
    if not match:
        raise SystemExit(f"Can't work out the GitHub repository from remote '{url}', pass --repo owner/name")
    return match.group(1)


class Wiki:
    def __init__(self, repo_root: Path, slug: str, branch: str):
        self.root = repo_root
        self.slug = slug
        self.branch = branch
        self.pages: dict[str, str] = {}  # wiki page name -> markdown
        self.sources: dict[str, str] = {}  # repo path (posix) -> wiki page name

    # ---------------------------------------------------------------------------------------------

    def page_names(self) -> set[str]:
        return set(self.sources.values()) | set(self.pages)

    def page_for(self, repo_path: str, page: str):
        self.sources[repo_path] = page

    def add(self, page: str, markdown: str, source: str):
        self.pages[page] = self.rewrite_links(markdown, source)

    def rewrite_links(self, markdown: str, source: str) -> str:
        base = posixpath.dirname(source)

        def target(url: str, image: bool) -> str:
            wiki_url = f"https://github.com/{self.slug}/wiki"
            if url == wiki_url or url.startswith(wiki_url + "/"):
                return url[len(wiki_url) + 1:] or "Home"  # this wiki: use a page link
            if re.match(r"^[a-z][a-z0-9+.-]*:", url, re.IGNORECASE) or url.startswith("#"):
                return url  # absolute URL, mailto:, or in-page anchor
            path, _, anchor = url.partition("#")
            if path in self.page_names():
                return url  # already a wiki link
            resolved = posixpath.normpath(posixpath.join(base, path)) if path else source
            if resolved == ".":
                resolved = ""
            page = self.sources.get(resolved) or self.sources.get(resolved.rstrip("/") + "/README.md")
            if page and not image:
                return page + (f"#{anchor}" if anchor else "")
            if image:
                return f"https://raw.githubusercontent.com/{self.slug}/{self.branch}/{resolved}"
            kind = "tree" if (self.root / resolved).is_dir() else "blob"
            return f"https://github.com/{self.slug}/{kind}/{self.branch}/{resolved}" + (f"#{anchor}" if anchor else "")

        markdown = MD_LINK.sub(lambda m: f"{m.group(1)}[{m.group(2)}]({target(m.group(3), bool(m.group(1)))}{m.group(4) or ''})",
                               markdown)
        markdown = HTML_SRC.sub(lambda m: f"{m.group(1)}{m.group(2)}{target(m.group(3), True)}{m.group(2)}", markdown)
        return markdown

    # ---------------------------------------------------------------------------------------------

    def write(self, out: Path):
        # Windows and GitHub wikis treat page names case-insensitively, so they must be unique that way
        seen: dict[str, str] = {}
        for page in self.pages:
            other = seen.setdefault(page.lower(), page)
            if other != page:
                raise SystemExit(f"Wiki pages '{other}' and '{page}' only differ in case")

        out.mkdir(parents=True, exist_ok=True)
        # Remove pages from a previous run, keep the wiki's git metadata
        for old in out.glob("*.md"):
            old.unlink()
        for page, markdown in sorted(self.pages.items()):
            (out / f"{page}.md").write_text(markdown.rstrip() + "\n", encoding="utf-8")


def version_key(version: str):
    return [int(p) if p.isdigit() else p for p in re.split(r"[.\-]", version)]


def build(repo_root: Path, out: Path, slug: str | None = None, branch: str = "main") -> list[str]:
    slug = slug or repo_slug(repo_root)
    wiki = Wiki(repo_root, slug, branch)
    docs = repo_root / "docs" / "game"
    versions = sorted((p.name for p in docs.iterdir() if (p / "api.json").exists()), key=version_key)

    # Register every page first, so links between them resolve regardless of order
    wiki.page_for("README.md", "Home")
    wiki.page_for("docs/game/README.md", "Game-Reference")
    for version in versions:
        prefix = f"Coromon-{version}"
        wiki.page_for(f"docs/game/{version}/README.md", prefix)
        wiki.page_for(f"docs/game/{version}/globals.md", f"{prefix}-Globals")
        if (docs / version / "CHANGES.md").exists():
            wiki.page_for(f"docs/game/{version}/CHANGES.md", f"{prefix}-Changes")
        for package in (docs / version / "packages").glob("*.md"):
            name = package.stem.replace("(root)", "root")
            wiki.page_for(f"docs/game/{version}/packages/{package.name}", f"{prefix}-{name}")
        # "(root).md" has parentheses, which markdown link targets can't contain unescaped
        wiki.page_for(f"docs/game/{version}/packages/root.md", f"{prefix}-root")

    for source, page in GUIDE_PAGES.items():
        wiki.page_for(source, page)

    # README -> Home, with links to the other pages
    links = "\n".join(f"- [{p.replace('-', ' ')}]({p})" for p in GUIDE_PAGES.values())
    home = (repo_root / "README.md").read_text(encoding="utf-8").rstrip()
    home += (f"\n\n# Pages\n\n{links}\n"
             "- [Game Reference](Game-Reference): modules, functions, settings and globals per game version\n")
    wiki.add("Home", home, "README.md")

    for source, page in GUIDE_PAGES.items():
        wiki.add(page, (repo_root / source).read_text(encoding="utf-8"), source)

    # Game reference
    wiki.add("Game-Reference", (docs / "README.md").read_text(encoding="utf-8"), "docs/game/README.md")
    for version in versions:
        prefix = f"Coromon-{version}"
        folder = docs / version
        index = (folder / "README.md").read_text(encoding="utf-8").replace("packages/(root).md", "packages/root.md")
        wiki.add(prefix, index, f"docs/game/{version}/README.md")
        wiki.add(f"{prefix}-Globals", (folder / "globals.md").read_text(encoding="utf-8"), f"docs/game/{version}/globals.md")
        if (folder / "CHANGES.md").exists():
            wiki.add(f"{prefix}-Changes", (folder / "CHANGES.md").read_text(encoding="utf-8"), f"docs/game/{version}/CHANGES.md")
        for package in sorted((folder / "packages").glob("*.md")):
            name = package.stem.replace("(root)", "root")
            wiki.add(f"{prefix}-{name}", package.read_text(encoding="utf-8"), f"docs/game/{version}/packages/{package.name}")

    # Sidebar and footer
    sidebar = [
        "**chalchiu for Coromon**", "",
        "- [Home](Home)", *(f"- [{p.replace('-', ' ')}]({p})" for p in GUIDE_PAGES.values()), "",
        "**Game Reference**", "",
    ]
    for version in reversed(versions):
        sidebar.append(f"- [Coromon {version}](Coromon-{version}) ([globals](Coromon-{version}-Globals))")
    wiki.pages["_Sidebar"] = "\n".join(sidebar)
    wiki.pages["_Footer"] = (
        f"Generated from [{slug}](https://github.com/{slug}) (`{branch}`) by `tools/gamedocs`. "
        "Edit the repository, not the wiki: pages are regenerated."
    )

    wiki.write(out)
    return sorted(wiki.pages)
