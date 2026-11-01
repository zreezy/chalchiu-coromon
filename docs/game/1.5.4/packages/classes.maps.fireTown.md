# classes.maps.fireTown

Coromon 1.5.4. 33 module(s). [Back to index](../README.md)

[dojo](#dojo), [dojo#afterSENSEI_STRATEGIC_BATTLE](#dojoaftersensei_strategic_battle), [dojo#whileGOTO_SENSEI](#dojowhilegoto_sensei), [dojo#whileJUMP_CHALLENGE](#dojowhilejump_challenge), [dojo#whileSENSEI_STRATEGIC_BATTLE](#dojowhilesensei_strategic_battle), [dojoGrounds](#dojogrounds), [dojoGrounds#beforeHANNAH_BATTLE](#dojogroundsbeforehannah_battle), [dojoGrounds#whileRETURN_TO_DOJO](#dojogroundswhilereturn_to_dojo), [dojoGrounds#whileRETURN_TO_DOJOorPAINT_FENCE](#dojogroundswhilereturn_to_dojoorpaint_fence), [dojo_leftWing](#dojo_leftwing), [dojo_rightWing](#dojo_rightwing), [fireRoute](#fireroute), [fireRoute#beforeGOTO_ICETOWN](#fireroutebeforegoto_icetown), [fireRoute#beforeJOHN_CHALLENGE](#fireroutebeforejohn_challenge), [fireRoute#whileJOHN_CHALLENGE](#fireroutewhilejohn_challenge), [fireRoute#whileOrAfterGOTO_ICETOWN](#fireroutewhileoraftergoto_icetown), [fireTown](#firetown), [fireTown#afterDEFEAT_FIRE_TITANandBeforeGOTO_ICETOWN](#firetownafterdefeat_fire_titanandbeforegoto_icetown), [fireTown#afterPUSH_BOULDER_ASIDEandBeforeOrWhileDESTROY_BOULDER](#firetownafterpush_boulder_asideandbeforeorwhiledestroy_boulder), [fireTown#beforeOrWhileDESTROY_BOULDER](#firetownbeforeorwhiledestroy_boulder), [fireTown#beforeOrWhileTRADE_NIBBLEGAR_FOR_TORUGA](#firetownbeforeorwhiletrade_nibblegar_for_toruga), [fireTown#whileDESTROY_BOULDER](#firetownwhiledestroy_boulder), [fireTown#whileGOTO_FIRETOWN](#firetownwhilegoto_firetown), [fireTown#whileGOTO_FIRETOWNorPUSH_BOULDER_ASIDE](#firetownwhilegoto_firetownorpush_boulder_aside), [houseMiners](#houseminers), [houseMiners_f1](#houseminers_f1), [housePele](#housepele), [housePele#afterDESTROY_BOULDER](#housepeleafterdestroy_boulder), [housePele#beforeOrWhileDESTROY_BOULDER](#housepelebeforeorwhiledestroy_boulder), [shop_fireTown](#shop_firetown), [trainerHub_fireTown](#trainerhub_firetown), [trainerHub_fireTown_f1](#trainerhub_firetown_f1), [trainerHub_fireTown_f1#whileGOTO_ARCADEorWhileFLAPPY_SWURMY](#trainerhub_firetown_f1whilegoto_arcadeorwhileflappy_swurmy)

### dojo

`classes.maps.fireTown.dojo`

- returns `map`

### dojo#afterSENSEI_STRATEGIC_BATTLE

`classes.maps.fireTown.dojo#afterSENSEI_STRATEGIC_BATTLE`

- returns `map`

### dojo#whileGOTO_SENSEI

`classes.maps.fireTown.dojo#whileGOTO_SENSEI`

- returns `map`, uses coroutines

### dojo#whileJUMP_CHALLENGE

`classes.maps.fireTown.dojo#whileJUMP_CHALLENGE`

- returns `map`, uses coroutines

### dojo#whileSENSEI_STRATEGIC_BATTLE

`classes.maps.fireTown.dojo#whileSENSEI_STRATEGIC_BATTLE`

- returns `map`, uses coroutines
- requires: `classes.battle.abstractBattleEffect`

<details><summary>Functions (2)</summary>

- `senseiBattleEffect:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`
- `senseiBattleEffect:onBeforePlayerInventoryButtonMessage()`

</details>

### dojoGrounds

`classes.maps.fireTown.dojoGrounds`

- returns `map`

### dojoGrounds#beforeHANNAH_BATTLE

`classes.maps.fireTown.dojoGrounds#beforeHANNAH_BATTLE`

- returns `map`, uses coroutines

### dojoGrounds#whileRETURN_TO_DOJO

`classes.maps.fireTown.dojoGrounds#whileRETURN_TO_DOJO`

- returns `map`, uses coroutines

### dojoGrounds#whileRETURN_TO_DOJOorPAINT_FENCE

`classes.maps.fireTown.dojoGrounds#whileRETURN_TO_DOJOorPAINT_FENCE`

- returns `map`

### dojo_leftWing

`classes.maps.fireTown.dojo_leftWing`

- returns `map`

### dojo_rightWing

`classes.maps.fireTown.dojo_rightWing`

- returns `map`

### fireRoute

`classes.maps.fireTown.fireRoute`

- returns `map`

### fireRoute#beforeGOTO_ICETOWN

`classes.maps.fireTown.fireRoute#beforeGOTO_ICETOWN`

- returns `map`

### fireRoute#beforeJOHN_CHALLENGE

`classes.maps.fireTown.fireRoute#beforeJOHN_CHALLENGE`

- returns `map`, uses coroutines

### fireRoute#whileJOHN_CHALLENGE

`classes.maps.fireTown.fireRoute#whileJOHN_CHALLENGE`

- returns `map`, uses coroutines
- requires: `classes.battle.abstractBattleEffect`

<details><summary>Functions (3)</summary>

- `johnChallengeBattleEffect:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `johnChallengeBattleEffect:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `johnChallengeBattleEffect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### fireRoute#whileOrAfterGOTO_ICETOWN

`classes.maps.fireTown.fireRoute#whileOrAfterGOTO_ICETOWN`

- returns `map`

### fireTown

`classes.maps.fireTown.fireTown`

- returns `map`

### fireTown#afterDEFEAT_FIRE_TITANandBeforeGOTO_ICETOWN

`classes.maps.fireTown.fireTown#afterDEFEAT_FIRE_TITANandBeforeGOTO_ICETOWN`

- returns `map`, uses coroutines

### fireTown#afterPUSH_BOULDER_ASIDEandBeforeOrWhileDESTROY_BOULDER

`classes.maps.fireTown.fireTown#afterPUSH_BOULDER_ASIDEandBeforeOrWhileDESTROY_BOULDER`

- returns `map`

### fireTown#beforeOrWhileDESTROY_BOULDER

`classes.maps.fireTown.fireTown#beforeOrWhileDESTROY_BOULDER`

- returns `map`

### fireTown#beforeOrWhileTRADE_NIBBLEGAR_FOR_TORUGA

`classes.maps.fireTown.fireTown#beforeOrWhileTRADE_NIBBLEGAR_FOR_TORUGA`

- returns `map`, uses coroutines

### fireTown#whileDESTROY_BOULDER

`classes.maps.fireTown.fireTown#whileDESTROY_BOULDER`

- returns `map`, uses coroutines

### fireTown#whileGOTO_FIRETOWN

`classes.maps.fireTown.fireTown#whileGOTO_FIRETOWN`

- returns `map`, uses coroutines

### fireTown#whileGOTO_FIRETOWNorPUSH_BOULDER_ASIDE

`classes.maps.fireTown.fireTown#whileGOTO_FIRETOWNorPUSH_BOULDER_ASIDE`

- returns `map`, uses coroutines

### houseMiners

`classes.maps.fireTown.houseMiners`

- returns `map`

### houseMiners_f1

`classes.maps.fireTown.houseMiners_f1`

- returns `map`

### housePele

`classes.maps.fireTown.housePele`

- returns `map`

### housePele#afterDESTROY_BOULDER

`classes.maps.fireTown.housePele#afterDESTROY_BOULDER`

- returns `map`

### housePele#beforeOrWhileDESTROY_BOULDER

`classes.maps.fireTown.housePele#beforeOrWhileDESTROY_BOULDER`

- returns `map`

### shop_fireTown

`classes.maps.fireTown.shop_fireTown`

- returns `map`

### trainerHub_fireTown

`classes.maps.fireTown.trainerHub_fireTown`

- returns `map`

### trainerHub_fireTown_f1

`classes.maps.fireTown.trainerHub_fireTown_f1`

- returns `map`, uses coroutines
- requires: `classes.interface.games.MiniGameTitleScreenOverlay`

### trainerHub_fireTown_f1#whileGOTO_ARCADEorWhileFLAPPY_SWURMY

`classes.maps.fireTown.trainerHub_fireTown_f1#whileGOTO_ARCADEorWhileFLAPPY_SWURMY`

- returns `map`, uses coroutines
