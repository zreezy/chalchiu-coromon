# classes.modules.mte.collisions

Coromon 1.5.4. 7 module(s). [Back to index](../README.md)

[class](#class), [gjk](#gjk), [init](#init), [polygon](#polygon), [shapes](#shapes), [spatialhash](#spatialhash), [vector-light](#vector-light)

### class

`classes.modules.mte.collisions.class`

- defines globals: `common` = table

- `class.__tostring()`
- `class:is_a(other)`

<details><summary>Instance / other functions (2)</summary>

- `common.class(name, prototype, parent)`
- `common.instance(class, ...)`

</details>

### gjk

`classes.modules.mte.collisions.gjk`

- returns `GJK`
- requires: `classes.modules.mte.collisions.vector-light`

### init

`classes.modules.mte.collisions.init`

- requires: `classes.modules.mte.collisions.class`, `classes.modules.mte.collisions.shapes`, `classes.modules.mte.collisions.spatialhash`
- defines globals: `common` = common

<details><summary>Functions (14)</summary>

- `HC:init(cell_size)`
- `HC:hash()`
- `HC:resetHash(cell_size)`
- `HC:register(shape)`
- `HC:remove(shape)`
- `HC:polygon(...)`
- `HC:rectangle(x, y, w, h)`
- `HC:circle(x, y, r)`
- `HC:ellipse(x, y, rx, ry)`
- `HC:point(x, y)`
- `HC:neighbors(shape)`
- `HC:collisions(shape)`
- `HC:raycast(x, y, dx, dy, range)`
- `HC:shapesAt(x, y)`

</details>

### polygon

`classes.modules.mte.collisions.polygon`

- returns `Polygon`
- requires: `classes.modules.mte.collisions.class`, `classes.modules.mte.collisions.vector-light`
- defines globals: `common` = common

- `polygon:init(...)`
- `polygon:unpack()`
- `polygon:clone()`
- `polygon:bbox()`
- `polygon:isConvex()`
- `polygon:move(dx, dy)`
- `polygon:rotate(angle, cx, cy)`
- `polygon:scale(s, cx, cy)`
- `polygon:triangulate()`
- `polygon:mergedWith(other)`
- `polygon:splitConvex()`
- `polygon:contains(x, y)`
- `polygon:intersectionsWithRay(x, y, dx, dy)`
- `polygon:intersectsRay(x, y, dx, dy)`

<details><summary>Instance / other functions (1)</summary>

- `self.isConvex()`

</details>

### shapes

`classes.modules.mte.collisions.shapes`

- requires: `classes.modules.mte.collisions.class`, `classes.modules.mte.collisions.vector-light`, `classes.modules.mte.collisions.polygon`, `classes.modules.mte.collisions.gjk`
- defines globals: `common` = common

<details><summary>Functions (74)</summary>

- `Shape:move(x, y)`
- `Shape:center()`
- `Shape:outcircle()`
- `Shape:bbox()`
- `Shape:scale(s)`
- `Shape:collidesWith(o)`
- `Shape:contains(x, y)`
- `Shape:intersectsRay(x, y, dx, dy)`
- `Shape:intersectionsWithRay(x, y, dx, dy)`
- `Shape:support(dx, dy)`
- `Shape:init(t)`
- `Shape:moveTo(x, y)`
- `Shape:roundPosition()`
- `Shape:rotation()`
- `Shape:rotate(angle, x, y)`
- `Shape:setRotation(angle, x, y)`
- `ConvexPolygonShape:init(polygon)`
- `ConcavePolygonShape:init(poly)`
- `CircleShape:init(cx, cy, radius)`
- `EllipseShape:init(cx, cy, rx, ry)`
- `PointShape:init(x, y)`
- `ConvexPolygonShape:support(dx, dy)`
- `CircleShape:support(dx, dy)`
- `EllipseShape:support(dx, dy)`
- `ConvexPolygonShape:collidesWith(other)`
- `ConcavePolygonShape:collidesWith(other)`
- `CircleShape:collidesWith(other)`
- `EllipseShape:collidesWith(other)`
- `PointShape:collidesWith(other)`
- `ConvexPolygonShape:contains(x, y)`
- `ConcavePolygonShape:contains(x, y)`
- `CircleShape:contains(x, y)`
- `EllipseShape:contains(x, y)`
- `PointShape:contains(x, y)`
- `ConcavePolygonShape:intersectsRay(x, y, dx, dy)`
- `ConvexPolygonShape:intersectsRay(x, y, dx, dy)`
- `ConcavePolygonShape:intersectionsWithRay(x, y, dx, dy)`
- `ConvexPolygonShape:intersectionsWithRay(x, y, dx, dy)`
- `CircleShape:intersectionsWithRay(x, y, dx, dy)`
- `CircleShape:intersectsRay(x, y, dx, dy)`
- `EllipseShape:intersectionsWithRay(x, y, dx, dy)`
- `EllipseShape:intersectsRay(x, y, dx, dy)`
- `PointShape:intersectsRay(x, y, dx, dy)`
- `PointShape:intersectionsWithRay(x, y, dx, dy)`
- `ConvexPolygonShape:center()`
- `ConcavePolygonShape:center()`
- `CircleShape:center()`
- `EllipseShape:center()`
- `PointShape:center()`
- `ConvexPolygonShape:outcircle()`
- `ConcavePolygonShape:outcircle()`
- `CircleShape:outcircle()`
- `PointShape:outcircle()`
- `EllipseShape:outcircle()`
- `ConvexPolygonShape:bbox()`
- `ConcavePolygonShape:bbox()`
- `CircleShape:bbox()`
- `EllipseShape:bbox()`
- `PointShape:bbox()`
- `ConvexPolygonShape:move(x, y)`
- `ConcavePolygonShape:move(x, y)`
- `CircleShape:move(x, y)`
- `EllipseShape:move(x, y)`
- `PointShape:move(x, y)`
- `ConcavePolygonShape:rotate(angle, cx, cy)`
- `ConvexPolygonShape:rotate(angle, cx, cy)`
- `CircleShape:rotate(angle, cx, cy)`
- `EllipseShape:rotate(angle, cx, cy)`
- `PointShape:rotate(angle, cx, cy)`
- `ConcavePolygonShape:scale(s)`
- `ConvexPolygonShape:scale(s)`
- `CircleShape:scale(s)`
- `EllipseShape:scale(s)`
- `PointShape:scale()`

</details>

### spatialhash

`classes.modules.mte.collisions.spatialhash`

- requires: `classes.modules.mte.collisions.class`, `classes.modules.mte.collisions.vector-light`
- defines globals: `common` = common

<details><summary>Functions (10)</summary>

- `Spatialhash:init(cell_size)`
- `Spatialhash:cellCoords(x, y)`
- `Spatialhash:cell(i, k)`
- `Spatialhash:cellAt(x, y)`
- `Spatialhash:shapes()`
- `Spatialhash:inSameCells(x1, y1, x2, y2)`
- `Spatialhash:register(obj, x1, y1, x2, y2)`
- `Spatialhash:remove(obj, x1, y1, x2, y2)`
- `Spatialhash:update(obj, old_x1, old_y1, old_x2, old_y2, new_x1, new_y1, new_x2, new_y2)`
- `Spatialhash:intersectionsWithSegment(x1, y1, x2, y2)`

</details>

### vector-light

`classes.modules.mte.collisions.vector-light`
