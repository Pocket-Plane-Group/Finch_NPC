BEGIN BSUFINCH

// Banter about Labor, hard work and usefulness
CHAIN
IF WEIGHT #4 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchYeslick1","LOCALS",0)~ THEN %er_tutu%BYESLI SuHardWorker
@175 DO ~SetGlobal("SUFinchYeslick1","LOCALS",1)~
== BSUFINCH @176
== %er_tutu%BYESLI @177
=
@178
== BSUFINCH @179
== %er_tutu%BYESLI @180
== BSUFINCH @181
== %er_tutu%BYESLI @182
EXIT

// Banter with Branwen about sturdiness.
CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchBranwen1","LOCALS",0)~ THEN %er_tutu%BBRANW SuSturdyForSize
@183 DO ~SetGlobal("SUFinchBranwen1","LOCALS",1)~
== BSUFINCH @184
== %er_tutu%BBRANW @185
== BSUFINCH @186
EXIT

CHAIN
IF ~CombatCounter(0) InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
Global("SUFinchGarrick1","LOCALS",0)~ THEN BSUFINCH SuFinchBardTroupe
@187 DO ~SetGlobal("SUFinchGarrick1","LOCALS",1)~
== %er_tutu%BGARRI @188
== BSUFINCH @189
== %er_tutu%BGARRI @190
== BSUFINCH @191
=
@192
== %er_tutu%BGARRI @193
== BSUFINCH @194
== %er_tutu%BGARRI @195
=
@196
EXIT

//Banter with Faldorn about "If you were a tree, what kind of tree would you be...?"

CHAIN
IF ~ CombatCounter(0)
AreaType(FOREST)
InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",CD_STATE_NOTVALID)
Global("SUFinchFaldorn2","LOCALS",0)~ THEN BSUFINCH SuIfIWereATreeIdBeAShoeTree
@197  DO ~SetGlobal("SUFinchFaldorn2","LOCALS",1)~
== %er_tutu%BFALDO @198
== BSUFINCH @199
== %er_tutu%BFALDO @200
== BSUFINCH @201
=
@202
EXIT 

// Banter where Eldoth is rude. Like, duh. Probably should do this one on rest. Or not.

CHAIN
IF ~CombatCounter(0) InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",CD_STATE_NOTVALID)
Global("SUFinchEldoth1","LOCALS",0)~ THEN BSUFINCH SuFinchWorthAcknowledging
@203 DO ~SetGlobal("SUFinchEldoth1","LOCALS",1)~
== %er_tutu%BELDOT @204
=
@205
== BSUFINCH @206
== %er_tutu%BELDOT @207
== BSUFINCH @208
== %er_tutu%BELDOT @209
== BSUFINCH @210
== %er_tutu%BELDOT @211
EXIT

// Before rest. The foreshadowed Imoen prank.

CHAIN
IF WEIGHT #0 ~CombatCounter(0) InParty("%er_imoen%")
See("%er_imoen%")
!StateCheck("%er_imoen%",CD_STATE_NOTVALID)
Global("SUFinchImoenPrank","GLOBAL",1)~ THEN BSUFINCH SuFinchBoobytrap
@212 DO ~SetGlobal("SUFinchImoenPrank","GLOBAL",2)~
== %er_bimoen% @213                        
== BSUFINCH @214
== %er_bimoen% @215
== BSUFINCH @216
== %er_bimoen% @217
== BSUFINCH @218
== %er_bimoen% @219
== BSUFINCH @220
== %er_bimoen% @221
== BSUFINCH @222
== %er_bimoen% @223
== BSUFINCH @224 DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchJaheira2","GLOBAL",0)~ THEN %er_tutu%BJAHEI SuFinchLaughter
@225 DO ~SetGlobal("SUFinchJaheira2","GLOBAL",1)~   
=
@226
== BSUFINCH @227
== %er_tutu%BJAHEI @228
=
@229
== BSUFINCH @230
== %er_tutu%BJAHEI @231
== BSUFINCH @232
== %er_tutu%BJAHEI @233
EXIT

// Banter with Ajantis about courage.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAjantis1","LOCALS",0)
Global("SUFinchYeslick2","GLOBAL",0)~ THEN %er_tutu%BAJANT SuFinchCourageLecture
@234 DO ~SetGlobal("SUFinchAjantis1","LOCALS",1)~
== BSUFINCH @235
== %er_tutu%BAJANT @236
== BSUFINCH @237
EXIT

CHAIN
IF ~CombatCounter(0) InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!Dead("Jaheira")
Global("SUFinchKhalid1","LOCALS",0)~ THEN BSUFINCH SuFinchMarriedFolks
@238 DO ~SetGlobal("SUFinchKhalid1","LOCALS",1)~
== %er_tutu%BKHALI @239
== BSUFINCH @240
== BSUFINCH IF ~InParty("Kivan")~ THEN @242
== BSUFINCH @243
== %er_tutu%BKHALI @244
=
@245
== BSUFINCH @246
== %er_tutu%BKHALI @247
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchCoran1","LOCALS",0)~ THEN %er_tutu%BCORAN SuFinchBlushing
@248 DO ~SetGlobal("SUFinchCoran1","LOCALS",1)~
== BSUFINCH @249
== %er_tutu%BCORAN @250
== BSUFINCH @251
== %er_tutu%BCORAN @252
== BSUFINCH @253 
== %er_tutu%BCORAN @254
EXIT

CHAIN
IF WEIGHT #10 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchGarrick2","LOCALS",0)~ THEN %er_tutu%BGARRI SuFinchGarrickScoresHarHar
@255 DO ~SetGlobal("SUFinchGarrick2","LOCALS",1)~
== BSUFINCH @256
== %er_tutu%BGARRI @257
== BSUFINCH @258
== %er_tutu%BGARRI @259
== BSUFINCH @260
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchEdwin1","LOCALS",0)~ THEN %er_tutu%BEDWIN SuFinchMule
@261 DO ~SetGlobal("SUFinchEdwin1","LOCALS",1)~                      
== BSUFINCH @262
== %er_tutu%BEDWIN @263
=
@264
== BSUFINCH @265
EXIT

// Banter where Safana goads about Finch must have some deep dark secrets. No one could be that much of a bore. No banter could be this boring, either.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchSafana1","LOCALS",0)~ THEN %er_tutu%BSAFAN SuFinchDullDull
@266 DO ~SetGlobal("SUFinchSafana1","LOCALS",1)~
== BSUFINCH @267
== %er_tutu%BSAFAN @268
== BSUFINCH @269
== %er_tutu%BSAFAN @270
== BSUFINCH @271 
== %er_tutu%BSAFAN @272
EXIT

//Banter with Alora. Making funny faces because it's fun and fun is happy!!!!

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAlora1","LOCALS",0)~ THEN %er_tutu%BALORA SuFinchWrinkleNose
@273 DO ~SetGlobal("SUFinchAlora1","LOCALS",1)~
== BSUFINCH @274
== %er_tutu%BALORA @275
=
@276
== BSUFINCH @277
== %er_tutu%BALORA @278
== BSUFINCH @279
EXIT

//Banter with Yeslick about small folk facing large monsters in battle

CHAIN
IF ~ CombatCounter(0) InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
Global("SUFinchYeslick2","GLOBAL",0)~ THEN BSUFINCH SuSmallFolkBigBattles
@280 DO ~SetGlobal("SUFinchYeslick2","GLOBAL",1)~
== %er_tutu%BYESLI @281
== BSUFINCH @282
== %er_tutu%BYESLI @283
== BSUFINCH @284
== %er_tutu%BYESLI @285
== BSUFINCH @286
== %er_tutu%BYESLI @287
== BSUFINCH @288
== %er_tutu%BYESLI @289
== BSUFINCH @290
== %er_tutu%BYESLI @291
=
@292
EXIT

// Banter with Dynaheir about refined deportment
CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchDynaheir1","LOCALS",0)~ THEN %er_tutu%BDYNAH SuFinchQuillNibbling
@293 DO ~SetGlobal("SUFinchDynaheir1","LOCALS",1)~
== BSUFINCH @294
== %er_tutu%BDYNAH @295
== %er_tutu%BMINSC IF ~InParty("Minsc")~ @297
== %er_tutu%BDYNAH @298
== BSUFINCH @299
== %er_tutu%BDYNAH  @300
EXIT

// Banter with Xan about being trapped in the mines.
CHAIN
IF ~ CombatCounter(0)
InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
Global("SUFinchXan1","LOCALS",0)~ THEN BSUFINCH SuFunchWereTheMinesScaryXan
@301 DO ~SetGlobal("SUFinchXan1","LOCALS",1)~
== %er_tutu%BXANNN @302
== BSUFINCH @303
== %er_tutu%BXANNN @304
== BSUFINCH @305
EXIT 

CHAIN
IF ~InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
!Dead("Dynaheir")
GlobalGT("HelpMinsc","GLOBAL",1)
Global("SUFinchMinsc1","LOCALS",0)~ THEN BSUFINCH SuFinchGnolls
@306 DO ~SetGlobal("SUFinchMinsc1","LOCALS",1)~
== %er_tutu%BMINSC @307   
=
@308
== BSUFINCH @309
== %er_tutu%BMINSC @310
EXIT

// Banter where Xzar describes a nightmare, but he actually thinks it is a fabulous dream. After rest.

CHAIN
IF WEIGHT #1 ~CombatCounter(0) InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",CD_STATE_NOTVALID)
Global("SuFinchXzarDreamWake","GLOBAL",1)~ THEN BSUFINCH SuFinchWhatANightmare
@311 DO ~SetGlobal("SuFinchXzarDreamWake","GLOBAL",2)~
== %er_tutu%BXZAR @312
== BSUFINCH @313
== %er_tutu%BXZAR @314
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchKagain1","LOCALS",0)~ THEN %er_tutu%BKAGAI SuFinchSellItOnEBay
@315 DO ~SetGlobal("SUFinchKagain1","LOCALS",1)~
== BSUFINCH @316
== %er_tutu%BKAGAI @317
== BSUFINCH @318
== %er_tutu%BKAGAI @319
EXIT

// One Sharteel banter. Asks if she knows how to read?

CHAIN
IF ~CombatCounter(0) InParty("SHARTEEL")
See("SHARTEEL")
!StateCheck("SHARTEEL",CD_STATE_NOTVALID)
Global("SUFinchSharteel1","LOCALS",0)~ THEN BSUFINCH SuFinchReadingIsFundamental
@320
DO ~SetGlobal("SUFinchSharteel1","LOCALS",1)~
=
@321
== %er_tutu%BSHART @322
== BSUFINCH @323
== %er_tutu%BSHART @324
=
@325
EXIT

//Banter with Eldoth, some sleazy deal.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchEldoth2","LOCALS",0)~ THEN %er_tutu%BELDOT SuFinchCopyGoon
@326 DO ~SetGlobal("SUFinchEldoth2","LOCALS",1)~
=
@327
== BSUFINCH @328
== %er_tutu%BELDOT @329
== BSUFINCH @330
== %er_tutu%BELDOT @331
== BSUFINCH @332
== %er_tutu%BELDOT @333
=
@334
== BSUFINCH @335
EXIT

CHAIN
IF ~CombatCounter(0) InParty("DYNAHEIR")
See("DYNAHEIR")
!StateCheck("DYNAHEIR",CD_STATE_NOTVALID)
Global("SUFinchDynaheir2","LOCALS",0)~ THEN BSUFINCH SuFinchScaryGnolls
@336
DO ~SetGlobal("SUFinchDynaheir2","LOCALS",1)~
== %er_tutu%BDYNAH @337
== BSUFINCH @338
== %er_tutu%BDYNAH @339
== BSUFINCH @340
== %er_tutu%BDYNAH @341
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
TimeOfDay(NIGHT)
Global("SUFinchSkie1","LOCALS",0)~ THEN %er_tutu%BSKIE SuFinchInfrared
@342 DO ~SetGlobal("SUFinchSkie1","LOCALS",1)~
=
@343
== BSUFINCH @344
== %er_tutu%BSKIE @345
== BSUFINCH @346
== %er_tutu%BSKIE @347
=
@348
=
@349
EXIT

CHAIN
IF ~CombatCounter(0) InParty("BRANWEN")
See("BRANWEN")
!Dead("Tranzig")
!StateCheck("BRANWEN",CD_STATE_NOTVALID)
Global("SUFinchBranwen2","LOCALS",0)~ THEN BSUFINCH SuFinchStoned
@350 DO ~SetGlobal("SUFinchBranwen2","LOCALS",1)~
== %er_tutu%BBRANW @351
== BSUFINCH @352
== %er_tutu%BBRANW @353
=
@354
=
@355
== SUFINCH @356
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchXzar1","LOCALS",0)~ THEN %er_tutu%BXZAR SuFinchParanoia
@357 DO ~SetGlobal("SUFinchXzar1","LOCALS",1)~
== BSUFINCH @358
== %er_tutu%BXZAR @359
=
@360
== BSUFINCH @361
== %er_tutu%BXZAR @362
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchSkie2","LOCALS",0)~ THEN %er_tutu%BSKIE SuFinchInfrared
@363 DO ~SetGlobal("SUFinchSkie2","LOCALS",1)~
=
@364
== BSUFINCH @365
== %er_tutu%BSKIE @366
== BSUFINCH @367
== %er_tutu%BSKIE @368
=
@369
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchTiax1","LOCALS",0)~ THEN %er_tutu%BTIAX SuFinchTakeAMemo
@370
DO ~SetGlobal("SUFinchTiax1","LOCALS",1)~
=
@371 
== BSUFINCH @372
== %er_tutu%BTIAX @373
== BSUFINCH @374
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchMinsc2","LOCALS",0)~ THEN %er_tutu%BMINSC SuFinchNestingInstinct
@375 DO ~SetGlobal("SUFinchMinsc2","LOCALS",1)~                      
== BSUFINCH @376
=
@377
== %er_tutu%BMINSC @378
=
@379
== BSUFINCH @380
EXIT

// Banter w/ Safana about pirates? About talking to men?

CHAIN
IF ~CombatCounter(0) InParty("SAFANA")
See("SAFANA")
!StateCheck("SAFANA",CD_STATE_NOTVALID)
Global("SUFinchSafana2","LOCALS",0)~ THEN BSUFINCH SuFinchSea
@381 DO ~SetGlobal("SUFinchSafana2","LOCALS",1)~
=
@382
== %er_tutu%BSAFAN @383
== BSUFINCH @384
== %er_tutu%BSAFAN @385
== BSUFINCH @386 
== %er_tutu%BSAFAN @387
=
@388
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchViconia1","LOCALS",0)~ THEN %er_tutu%BVICON SuFinchUnderdark
@389 DO ~SetGlobal("SUFinchViconia1","LOCALS",1)~                      
== BSUFINCH @390
== %er_tutu%BVICON @391
=
@392
== BSUFINCH @393
== %er_tutu%BVICON @394
EXIT

// Quayle banter - she's annoyed at gnomish qwirkiness. Feels left out, for being a quiet, content sort. Battle of the glasses. Deneirrath are just smarty wanna-bes, but at least they don't have to shout how brilliant they are all the time. You're lucky to be a gnome, my dear.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchQuayle1","LOCALS",0)~ THEN %er_tutu%BQUAYL SuFinchDeneir
@395 DO ~SetGlobal("SUFinchQuayle1","LOCALS",1)~
== BSUFINCH @396
== %er_tutu%BQUAYL @397
=
@398
=
@399
== BSUFINCH @400
== %er_tutu%BQUAYL @401
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchCoran2","LOCALS",0)~ THEN %er_tutu%BCORAN SuFinchFlirting
@402 DO ~SetGlobal("SUFinchCoran2","LOCALS",1)~
== BSUFINCH @403
== %er_tutu%BCORAN @404
== BSUFINCH @405
== %er_tutu%BCORAN @406
== BSUFINCH @407
== %er_tutu%BCORAN @408
== BSUFINCH @409 
== %er_tutu%BCORAN @410
EXIT

//After rest
CHAIN
IF WEIGHT #2 ~CombatCounter(0) InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
Global("SuFinchKhalidGlassesWake","GLOBAL",1)~ THEN BSUFINCH SuFinchGlassesForeshadow
@411 DO ~SetGlobal("SuFinchKhalidGlassesWake","GLOBAL",2)~
== %er_tutu%BKHALI @412
== BSUFINCH @413
== %er_tutu%BKHALI @414
EXIT

CHAIN
IF WEIGHT #10 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchGarrick3","LOCALS",0)~ THEN %er_tutu%BGARRI SuFinchGarrickIsABook
@415 DO ~SetGlobal("SUFinchGarrick3","LOCALS",1)~
== BSUFINCH @416
== %er_tutu%BGARRI @417
== BSUFINCH @418
== %er_tutu%BGARRI @419 // Change to a simple 'How's that?'
== BSUFINCH @420
== %er_tutu%BGARRI @421
== BSUFINCH @422
=
@423
== %er_tutu%BGARRI @424 
== BSUFINCH @252
== %er_tutu%BGARRI @425 
=
@426
== BSUFINCH @427
== %er_tutu%BGARRI @428
== BSUFINCH @429
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAlora2","LOCALS",0)~ THEN %er_tutu%BALORA SuFinchYourFace
@444 DO ~SetGlobal("SUFinchAlora2","LOCALS",1)~
== BSUFINCH @445
== %er_tutu%BALORA @446
== BSUFINCH @447
== %er_tutu%BALORA @448
== BSUFINCH @449
== %er_tutu%BALORA @450
EXIT

// One Montaron Banter. Bet she's a wild one with a few drinks.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchMonty2","LOCALS",0)~ THEN %er_tutu%BMONTA SuFinchSororityGirl
@451 DO ~SetGlobal("SUFinchMonty2","LOCALS",1)~
== BSUFINCH @452
=
@453
== %er_tutu%BMONTA @454
== BSUFINCH @455
== %er_tutu%BMONTA @456
== BSUFINCH @457
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchMinsc3","LOCALS",0)~ THEN %er_tutu%BMINSC SuFinchLittleThang
@458 DO ~SetGlobal("SUFinchMinsc3","LOCALS",1)~                      
== BSUFINCH @459
== %er_tutu%BMINSC @460
=
@461
== BSUFINCH @462
== %er_tutu%BMINSC @463
== BSUFINCH @464
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
TimeOfDay(NIGHT)
Global("SUFinchViconia2","LOCALS",0)~ THEN %er_tutu%BVICON SuFinchNight
@465 DO ~SetGlobal("SUFinchViconia2","LOCALS",1)~                      
== BSUFINCH @466
== %er_tutu%BVICON @467
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchQuayle2","LOCALS",0)~ THEN %er_tutu%BQUAYL SuFinchOfCourseWeMustHaveANoseBanter
@468 DO ~SetGlobal("SUFinchQuayle2","LOCALS",1)~
=
@469
== BSUFINCH @470
== %er_tutu%BQUAYL @471
=
@472
=
@473
== BSUFINCH @474
=
@475
EXIT

CHAIN
IF ~CombatCounter(0) InParty("TIAX")
See("TIAX")
!StateCheck("TIAX",CD_STATE_NOTVALID)
Global("SUFinchTiax2","LOCALS",0)~ THEN BSUFINCH SuFinchYouRule
@476 DO ~SetGlobal("SUFinchTiax2","LOCALS",1)~
== %er_tutu%BTIAX @477
== BSUFINCH @478
== %er_tutu%BTIAX @479
== BSUFINCH @480
== %er_tutu%BTIAX @481
== BSUFINCH @482
=
@483
== %er_tutu%BTIAX @484
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchEldoth3","LOCALS",0)~ THEN %er_tutu%BELDOT SuFinchNotorious
@485 DO ~SetGlobal("SUFinchEldoth3","LOCALS",1)~
== BSUFINCH @486
== %er_tutu%BELDOT @487
=
@488
== BSUFINCH @489
=
@490
== %er_tutu%BELDOT @491
== BSUFINCH @492
== %er_tutu%BELDOT @493
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("SUFinchKhalid3","LOCALS",0)~ THEN %er_tutu%BKHALI SuFinchMud
@494 DO ~SetGlobal("SUFinchKhalid3","LOCALS",1)~
== BSUFINCH @495
== %er_tutu%BKHALI @496
== BSUFINCH @497
EXIT

CHAIN
IF ~CombatCounter(0) InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",CD_STATE_NOTVALID)
AreaType(DUNGEON)
Global("SUFinchMonty1","LOCALS",0)~ THEN BSUFINCH SuFinchQuitBellowing
@498 DO ~SetGlobal("SUFinchMonty1","LOCALS",1)~
== %er_tutu%BMONTA @499
== BSUFINCH @500
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchQuayle3","LOCALS",0)~ THEN %er_tutu%BQUAYL SuFinchTheoreticallyDeepStuff
@501 DO ~SetGlobal("SUFinchQuayle3","LOCALS",1)~
== BSUFINCH @502
== %er_tutu%BQUAYL @503
== BSUFINCH @504
=
@505
=
@506
== %er_tutu%BQUAYL @507
=
@508
== BSUFINCH @509
== %er_tutu%BQUAYL @510
== BSUFINCH @511
== %er_tutu%BQUAYL @512
=
@513
EXIT

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("SUFinchJaheira3","LOCALS",0)~ THEN BSUFINCH SuFinchNeverSeenATree
@514 DO ~SetGlobal("SUFinchJaheira3","LOCALS",1)~
== %er_tutu%BJAHEI @515
== BSUFINCH @516
== %er_tutu%BJAHEI @517
== BSUFINCH @518
== %er_tutu%BJAHEI @519
EXIT

CHAIN
IF ~CombatCounter(0) InParty("DYNAHEIR")
See("DYNAHEIR")
!StateCheck("DYNAHEIR",CD_STATE_NOTVALID)
InParty("Minsc")
Global("SUFinchDynaheir3","LOCALS",0)~ THEN BSUFINCH SuFinchMinscIsSwell
@520
DO ~SetGlobal("SUFinchDynaheir3","LOCALS",1)~
== %er_tutu%BDYNAH @521
== BSUFINCH @522
== %er_tutu%BDYNAH @523
== BSUFINCH @524
== %er_tutu%BDYNAH @525
== BSUFINCH @526
EXIT

//Banter with Faldorn about being raised by the Shadow Druids? Stuff about 'Don't most animals raise their own?"
// Faldorn could reply with stuff like "Some things are left to fend for themselves" "Wolves will foster a cub")

CHAIN
IF ~ CombatCounter(0)
InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",CD_STATE_NOTVALID)
Global("SUFinchFaldorn3","LOCALS",0)~ THEN BSUFINCH SuOrphanFaldorns
@527  DO ~SetGlobal("SUFinchFaldorn3","LOCALS",1)~
== %er_tutu%BFALDO @528
== %er_tutu%BFALDO @529
== BSUFINCH @530
EXIT 

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchKagain2","GLOBAL",0)~ THEN %er_tutu%BKAGAI SuFinchAskNicely
@531 DO ~SetGlobal("SUFinchKagain2","GLOBAL",1)~
== BSUFINCH @532
== %er_tutu%BKAGAI @533
=
@534
EXIT

CHAIN
IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",CD_STATE_NOTVALID)
Global("SUFinchEdwin2","LOCALS",0)~ THEN BSUFINCH SuFinchNashkel
@535 DO ~SetGlobal("SUFinchEdwin2","LOCALS",1)~
== %er_tutu%BEDWIN @536                        
== BSUFINCH @537
== %er_tutu%BEDWIN @538
== BSUFINCH @539
EXIT

// Banter with Ajantis about Waterdeep

CHAIN
IF ~CombatCounter(0) InParty("AJANTIS")
See("AJANTIS")
!StateCheck("AJANTIS",CD_STATE_NOTVALID)
Global("SUFinchAjantis2","LOCALS",0)~ THEN BSUFINCH SuFinchBigCity
@540 DO ~SetGlobal("SUFinchAjantis2","LOCALS",1)~
== %er_tutu%BAJANT @541
== BSUFINCH @542
== %er_tutu%BAJANT @543
== BSUFINCH @544
=
@545
== %er_tutu%BAJANT @546
== BSUFINCH @547
== %er_tutu%BAJANT @548
=
@549
== BSUFINCH @550
== %er_tutu%BAJANT @551
EXIT

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("SUFinchJaheira4","LOCALS",0)~ THEN BSUFINCH SuFinchBoscoe 
@552 DO ~SetGlobal("SUFinchJaheira4","LOCALS",1)~
== %er_tutu%BJAHEI @553
== SUFINCH @554
== %er_tutu%BJAHEI @555
== SUFINCH @556
== %er_tutu%BJAHEI @557
== SUFINCH @558
== %er_tutu%BJAHEI @559
== SUFINCH @560
== %er_tutu%BJAHEI @561
== SUFINCH @562
== %er_tutu%BJAHEI @563
= @564
== SUFINCH @565
EXIT

// Kivan banter about sharing silence.

CHAIN
IF WEIGHT #10 ~CombatCounter(0)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchKivan1", "LOCALS", 0)~ THEN %er_tutu%BKIVAN SuFinchSilence
@566 DO ~SetGlobal("SUFinchKivan1", "LOCALS", 1)~
== BSUFINCH @567
== %er_tutu%BKIVAN @568
== %er_tutu%BSHART IF ~InParty("Sharteel")~ THEN @570
== %er_tutu%BALORA IF ~InParty("Alora")~ THEN @572 
== %er_tutu%BTIAX IF ~InParty("Tiax")~ THEN @574
== %er_tutu%BKIVAN @575
EXIT

CHAIN
IF ~CombatCounter(0) InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
LevelGT("Garrick", 3)
HPPercentLT("Garrick",20)
Global("SUFinchGarrick4","LOCALS",0)~ THEN BSUFINCH SuFinchOuchieGarrick
@576 DO ~SetGlobal("SUFinchGarrick4","LOCALS",1) MoveToObject("Garrick")~
= @577
== %er_tutu%BGARRI @578
=
@579
== BSUFINCH @580 DO ~ForceSpell("Garrick",CLERIC_CURE_LIGHT_WOUNDS)~
== %er_tutu%BGARRI @581
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchTiax3","LOCALS",0)~ THEN %er_tutu%BTIAX SuFinchAnts
@582 DO ~SetGlobal("SUFinchTiax3","LOCALS",1)~
== BSUFINCH @583
== %er_tutu%BTIAX @584
== BSUFINCH @585
EXIT

CHAIN
IF ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("SUFinchImoen2","LOCALS",0)~ THEN %er_bimoen% SuFinchCandlekeep
@586 DO ~SetGlobal("SUFinchImoen2","LOCALS",1)~                      
== BSUFINCH @587
== %er_bimoen% @588
== BSUFINCH @589
== %er_bimoen% @590
== BSUFINCH @591
== %er_bimoen% @592 
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAlora3","GLOBAL",0)~ THEN %er_tutu%BALORA SuFinchYourFace
@593 DO ~SetGlobal("SUFinchAlora3","GLOBAL",1)~
== BSUFINCH @594
== %er_tutu%BALORA @595
== BSUFINCH @596
== %er_tutu%BALORA @597
== BSUFINCH @598
== %er_tutu%BALORA @599
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchSharteel2","LOCALS",0)~ THEN %er_tutu%BSHART SuFinchManGod
@600 DO ~SetGlobal("SUFinchSharteel2","LOCALS",1)~
== BSUFINCH @601
== %er_tutu%BSHART @602
== BSUFINCH @603
== %er_tutu%BSHART @604
EXIT

// Jaheira

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
!Dead("Khalid")
Global("SUFinchJaheira2","GLOBAL",1)
Global("SUFinchJaheira1","LOCALS",0)~ THEN BSUFINCH SuFinchLove
@430 DO ~SetGlobal("SUFinchJaheira1","LOCALS",1)~
== %er_tutu%BJAHEI IF  ~InParty("Skie")~ THEN @433   
== %er_tutu%BJAHEI IF ~!InParty("Skie") InParty("Safana")~ THEN @435   
== BSUFINCH @436
=
@437
== %er_tutu%BJAHEI @438
== BSUFINCH @439
== %er_tutu%BJAHEI @440
== BSUFINCH @441
== %er_tutu%BJAHEI @442
== BSUFINCH @443
EXIT


CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAlora3","GLOBAL",1)
Global("SUFinchXan2","LOCALS",1)~ THEN %er_tutu%BXANNN SuFinchYouSmileTooMuchNow
@605 DO ~SetGlobal("SUFinchXan2","LOCALS",1)~
== BSUFINCH @606
== %er_tutu%BXANNN @607
== BSUFINCH @608
== %er_tutu%BXANNN @609
EXIT

// Banter with Yeslick about recording his story, ends with Yeslick saying some tragedies should be forgotten.

CHAIN
IF ~ CombatCounter(0) InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
Global("SUFinchYeslick3","LOCALS",0)~ THEN BSUFINCH SuYesLegacy
@610 DO ~SetGlobal("SUFinchYeslick3","LOCALS",1)~
== %er_tutu%BYESLI @611
== BSUFINCH @612
=
@613
== %er_tutu%BYESLI @614
== BSUFINCH @615
=
@616
== %er_tutu%BYESLI @617
== BSUFINCH @618
=
@619
== %er_tutu%BYESLI @620
EXIT


CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
AreaType(CITY)
Global("SUFinchFaldorn4","LOCALS",0)~ THEN %er_tutu%BFALDO SuFinchCobblestonesSux
@621 DO ~SetGlobal("SUFinchFaldorn4","LOCALS",1)~
== BSUFINCH @622
== %er_tutu%BFALDO @623
== BSUFINCH @624
== %er_tutu%BFALDO @625
== BSUFINCH @626
=
@627
EXIT

CHAIN
IF ~CombatCounter(0) InParty("KIVAN")
See("KIVAN")
!StateCheck("KIVAN",CD_STATE_NOTVALID)
Global("SUFinchKivan2","LOCALS",0)~ THEN BSUFINCH SuFinchLookStraightAhead
@628 DO ~SetGlobal("SUFinchKivan2","LOCALS",1)~
== %er_tutu%BKIVAN @629
== BSUFINCH @630
=
@631
=
@632
== %er_tutu%BKIVAN @633
== BSUFINCH @634
== %er_tutu%BKIVAN @635
EXIT

// Banter with Ajantis about mapping a dungeon.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchAjantis3","LOCALS",0)
AreaType(DUNGEON)~ THEN %er_tutu%BAJANT SuFinchCourageLecture
@636 DO ~SetGlobal("SUFinchAjantis3","LOCALS",1)~
== BSUFINCH @637
== %er_tutu%BAJANT @638
== BSUFINCH @639
EXIT

//Banter about cloud watching. Most awful stupid banter ever.

CHAIN
IF WEIGHT #2 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
InParty("ALORA")
See("ALORA")
!StateCheck("ALORA",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
Global("SUFinchImoen2","LOCALS",0)~ THEN %er_bimoen% SuFinchCloudWatching
@640 DO ~SetGlobal("SUFinchImoen2","LOCALS",1)~
== %er_tutu%BALORA @641
== %er_bimoen% @642
== BSUFINCH @643
== %er_tutu%BALORA @644
== %er_bimoen% @645
=
@646
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchXan3","LOCALS",1)~ THEN %er_tutu%BXANNN SuFinchShesSmilingAgain
@647 DO ~SetGlobal("SUFinchXan3","LOCALS",1)~
== BSUFINCH @648
== %er_tutu%BXANNN @649
== BSUFINCH @650
== %er_tutu%BXANNN @651
EXIT

CHAIN
IF ~CombatCounter(0) InParty("Kagain")
See("Kagain")
!StateCheck("Kagain",CD_STATE_NOTVALID)
Global("SUFinchKagain2","GLOBAL",1)
Global("SUFinchKagain3","LOCALS",0)~ THEN BSUFINCH SuFinchDoubleBooked
@652 DO ~SetGlobal("SUFinchKagain3","LOCALS",1)~
== %er_tutu%BKAGAI @653
== BSUFINCH @654
== %er_tutu%BKAGAI @655
== BSUFINCH @656
== %er_tutu%BKAGAI @657
=
@658
== BSUFINCH @659
== %er_tutu%BKAGAI @660
EXIT 

//Banter where Faldorn complains about parchment paper, ink, vellum, stolen from nature. Deneir is an affront, the // enemy of the Oak Father

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchFaldorn1","LOCALS",0)~ THEN %er_tutu%BFALDO SuFinchDeneirAsAffront
@661 DO ~SetGlobal("SUFinchFaldorn1","LOCALS",1)~
== BSUFINCH @662
== %er_tutu%BFALDO @663
== BSUFINCH @664
== %er_tutu%BFALDO @665
=
@666
== BSUFINCH @667
== %er_tutu%BFALDO @668
== BSUFINCH @669
EXIT