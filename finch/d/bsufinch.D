BEGIN BSUFINCH

// Banter about Labor, hard work and usefulness
CHAIN
IF WEIGHT #4 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchYeslick1","LOCALS",0)~ THEN _BYESLI SuHardWorker
@175 DO ~SetGlobal("SUFinchYeslick1","LOCALS",1)~
== BSUFINCH @176
== _BYESLI @177
=
@178
== BSUFINCH @179
== _BYESLI @180
== BSUFINCH @181
== _BYESLI @182
EXIT

// Banter with Branwen about sturdiness.
CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchBranwen1","LOCALS",0)~ THEN _BBRANW SuSturdyForSize
@183 DO ~SetGlobal("SUFinchBranwen1","LOCALS",1)~
== BSUFINCH @184
== _BBRANW @185
== BSUFINCH @186
EXIT

CHAIN
IF ~CombatCounter(0) InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",STATE_SLEEPING)
Global("SUFinchGarrick1","LOCALS",0)~ THEN BSUFINCH SuFinchBardTroupe
@187 DO ~SetGlobal("SUFinchGarrick1","LOCALS",1)~
== _BGARRI @188
== BSUFINCH @189
== _BGARRI @190
== BSUFINCH @191
=
@192
== _BGARRI @193
== BSUFINCH @194
== _BGARRI @195
=
@196
EXIT

//Banter with Faldorn about "If you were a tree, what kind of tree would you be...?"

CHAIN
IF ~ CombatCounter(0)
AreaType(FOREST)
InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",STATE_SLEEPING)
Global("SUFinchFaldorn2","LOCALS",0)~ THEN BSUFINCH SuIfIWereATreeIdBeAShoeTree
@197  DO ~SetGlobal("SUFinchFaldorn2","LOCALS",1)~
== _BFALDO @198
== BSUFINCH @199
== _BFALDO @200
== BSUFINCH @201
=
@202
EXIT 

// Banter where Eldoth is rude. Like, duh. Probably should do this one on rest. Or not.

CHAIN
IF ~CombatCounter(0) InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",STATE_SLEEPING)
Global("SUFinchEldoth1","LOCALS",0)~ THEN BSUFINCH SuFinchWorthAcknowledging
@203 DO ~SetGlobal("SUFinchEldoth1","LOCALS",1)~
== _BELDOT @204
=
@205
== BSUFINCH @206
== _BELDOT @207
== BSUFINCH @208
== _BELDOT @209
== BSUFINCH @210
== _BELDOT @211
EXIT

// Before rest. The foreshadowed Imoen prank.

CHAIN
IF ~CombatCounter(0) InParty("IMOEN")
See("IMOEN")
!StateCheck("IMOEN",STATE_SLEEPING)
Global("SUFinchImoenPrank","GLOBAL",1)~ THEN BSUFINCH SuFinchBoobytrap
@212 DO ~SetGlobal("SUFinchImoenPrank","GLOBAL",2)~
== _BIMOEN @213                        
== BSUFINCH @214
== _BIMOEN @215
== BSUFINCH @216
== _BIMOEN @217
== BSUFINCH @218
== _BIMOEN @219
== BSUFINCH @220
== _BIMOEN @221
== BSUFINCH @222
== _BIMOEN @223
== BSUFINCH @224 DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchJaheira2","GLOBAL",0)~ THEN _BJAHEI SuFinchLaughter
@225 DO ~SetGlobal("SUFinchJaheira2","GLOBAL",1)~   
=
@226
== BSUFINCH @227
== _BJAHEI @228
=
@229
== BSUFINCH @230
== _BJAHEI @231
== BSUFINCH @232
== _BJAHEI @233
EXIT

// Banter with Ajantis about courage.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAjantis1","LOCALS",0)
Global("SUFinchYeslick2","GLOBAL",0)~ THEN _BAJANT SuFinchCourageLecture
@234 DO ~SetGlobal("SUFinchAjantis1","LOCALS",1)~
== BSUFINCH @235
== _BAJANT @236
== BSUFINCH @237
EXIT

CHAIN
IF ~CombatCounter(0) InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",STATE_SLEEPING)
!Dead("Jaheira")
Global("SUFinchKhalid1","LOCALS",0)~ THEN BSUFINCH SuFinchMarriedFolks
@238 DO ~SetGlobal("SUFinchKhalid1","LOCALS",1)~
== _BKHALI @239
== BSUFINCH @240
== BSUFINCH IF ~InParty("Kivan")~ THEN @242
== BSUFINCH @243
== _BKHALI @244
=
@245
== BSUFINCH @246
== _BKHALI @247
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchCoran1","LOCALS",0)~ THEN _BCORAN SuFinchBlushing
@248 DO ~SetGlobal("SUFinchCoran1","LOCALS",1)~
== BSUFINCH @249
== _BCORAN @250
== BSUFINCH @251
== _BCORAN @252
== BSUFINCH @253 
== _BCORAN @254
EXIT

CHAIN
IF WEIGHT #10 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchGarrick2","LOCALS",0)~ THEN _BGARRI SuFinchGarrickScoresHarHar
@255 DO ~SetGlobal("SUFinchGarrick2","LOCALS",1)~
== BSUFINCH @256
== _BGARRI @257
== BSUFINCH @258
== _BGARRI @259
== BSUFINCH @260
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchEdwin1","LOCALS",0)~ THEN _BEDWIN SuFinchMule
@261 DO ~SetGlobal("SUFinchEdwin1","LOCALS",1)~                      
== BSUFINCH @262
== _BEDWIN @263
=
@264
== BSUFINCH @265
EXIT

// Banter where Safana goads about Finch must have some deep dark secrets. No one could be that much of a bore. No banter could be this boring, either.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchSafana1","LOCALS",0)~ THEN _BSAFAN SuFinchDullDull
@266 DO ~SetGlobal("SUFinchSafana1","LOCALS",1)~
== BSUFINCH @267
== _BSAFAN @268
== BSUFINCH @269
== _BSAFAN @270
== BSUFINCH @271 
== _BSAFAN @272
EXIT

//Banter with Alora. Making funny faces because it's fun and fun is happy!!!!

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAlora1","LOCALS",0)~ THEN _BALORA SuFinchWrinkleNose
@273 DO ~SetGlobal("SUFinchAlora1","LOCALS",1)~
== BSUFINCH @274
== _BALORA @275
=
@276
== BSUFINCH @277
== _BALORA @278
== BSUFINCH @279
EXIT

//Banter with Yeslick about small folk facing large monsters in battle

CHAIN
IF ~ CombatCounter(0) InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",STATE_SLEEPING)
Global("SUFinchYeslick2","GLOBAL",0)~ THEN BSUFINCH SuSmallFolkBigBattles
@280 DO ~SetGlobal("SUFinchYeslick2","GLOBAL",1)~
== _BYESLI @281
== BSUFINCH @282
== _BYESLI @283
== BSUFINCH @284
== _BYESLI @285
== BSUFINCH @286
== _BYESLI @287
== BSUFINCH @288
== _BYESLI @289
== BSUFINCH @290
== _BYESLI @291
=
@292
EXIT

// Banter with Dynaheir about refined deportment
CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchDynaheir1","LOCALS",0)~ THEN _BDYNAH SuFinchQuillNibbling
@293 DO ~SetGlobal("SUFinchDynaheir1","LOCALS",1)~
== BSUFINCH @294
== _BDYNAH @295
== _BMINSC IF ~InParty("Minsc")~ @297
== _BDYNAH @298
== BSUFINCH @299
== _BDYNAH  @300
EXIT

// Banter with Xan about being trapped in the mines.
CHAIN
IF ~ CombatCounter(0)
InParty("Xan")
See("Xan")
!StateCheck("Xan",STATE_SLEEPING)
Global("SUFinchXan1","LOCALS",0)~ THEN BSUFINCH SuFunchWereTheMinesScaryXan
@301 DO ~SetGlobal("SUFinchXan1","LOCALS",1)~
== _BXANNN @302
== BSUFINCH @303
== _BXANNN @304
== BSUFINCH @305
EXIT 

CHAIN
IF ~InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",STATE_SLEEPING)
!Dead("Dynaheir")
Global("SUFinchMinsc1","LOCALS",0)~ THEN BSUFINCH SuFinchGnolls
@306 DO ~SetGlobal("SUFinchMinsc1","LOCALS",1)~
== _BMINSC @307   
=
@308
== BSUFINCH @309
== _BMINSC @310
EXIT

// Banter where Xzar describes a nightmare, but he actually thinks it is a fabulous dream. After rest.

CHAIN
IF ~CombatCounter(0) InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",STATE_SLEEPING)
Global("SuFinchXzarDreamWake","GLOBAL",2)
Global("SUFinchXzar2","LOCALS",0)~ THEN BSUFINCH SuFinchWhatANightmare
@311 DO ~SetGlobal("SUFinchXzar2","LOCALS",1)~
== _BXZAR @312
== BSUFINCH @313
== _BXZAR @314
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchKagain1","LOCALS",0)~ THEN _BKAGAI SuFinchSellItOnEBay
@315 DO ~SetGlobal("SUFinchKagain1","LOCALS",1)~
== BSUFINCH @316
== _BKAGAI @317
== BSUFINCH @318
== _BKAGAI @319
EXIT

// One Sharteel banter. Asks if she knows how to read?

CHAIN
IF ~CombatCounter(0) InParty("SHARTEEL")
See("SHARTEEL")
!StateCheck("SHARTEEL",STATE_SLEEPING)
Global("SUFinchSharteel1","LOCALS",0)~ THEN BSUFINCH SuFinchReadingIsFundamental
@320
DO ~SetGlobal("SUFinchSharteel1","LOCALS",1)~
=
@321
== _BSHART @322
== BSUFINCH @323
== _BSHART @324
=
@325
EXIT

//Banter with Eldoth, some sleazy deal.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchEldoth2","LOCALS",0)~ THEN _BELDOT SuFinchCopyGoon
@326 DO ~SetGlobal("SUFinchEldoth2","LOCALS",1)~
=
@327
== BSUFINCH @328
== _BELDOT @329
== BSUFINCH @330
== _BELDOT @331
== BSUFINCH @332
== _BELDOT @333
=
@334
== BSUFINCH @335
EXIT

CHAIN
IF ~CombatCounter(0) InParty("DYNAHEIR")
See("DYNAHEIR")
!StateCheck("DYNAHEIR",STATE_SLEEPING)
Global("SUFinchDynaheir2","LOCALS",0)~ THEN BSUFINCH SuFinchScaryGnolls
@336
DO ~SetGlobal("SUFinchDynaheir2","LOCALS",1)~
== _BDYNAH @337
== BSUFINCH @338
== _BDYNAH @339
== BSUFINCH @340
== _BDYNAH @341
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
TimeOfDay(NIGHT)
Global("SUFinchSkie1","LOCALS",0)~ THEN _BSKIE SuFinchInfrared
@342 DO ~SetGlobal("SUFinchSkie1","LOCALS",1)~
=
@343
== BSUFINCH @344
== _BSKIE @345
== BSUFINCH @346
== _BSKIE @347
=
@348
=
@349
EXIT

CHAIN
IF ~CombatCounter(0) InParty("BRANWEN")
See("BRANWEN")
!Dead("Tranzig")
!StateCheck("BRANWEN",STATE_SLEEPING)
Global("SUFinchBranwen2","LOCALS",0)~ THEN BSUFINCH SuFinchStoned
@350 DO ~SetGlobal("SUFinchBranwen2","LOCALS",1)~
== _BBRANW @351
== BSUFINCH @352
== _BBRANW @353
=
@354
=
@355
== SUFINCH @356
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchXzar1","LOCALS",0)~ THEN _BXZAR SuFinchParanoia
@357 DO ~SetGlobal("SUFinchXzar1","LOCALS",1)~
== BSUFINCH @358
== _BXZAR @359
=
@360
== BSUFINCH @361
== _BXZAR @362
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchSkie2","LOCALS",0)~ THEN _BSKIE SuFinchInfrared
@363 DO ~SetGlobal("SUFinchSkie2","LOCALS",1)~
=
@364
== BSUFINCH @365
== _BSKIE @366
== BSUFINCH @367
== _BSKIE @368
=
@369
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchTiax1","LOCALS",0)~ THEN _BTIAX SuFinchTakeAMemo
@370
DO ~SetGlobal("SUFinchTiax1","LOCALS",1)~
=
@371 
== BSUFINCH @372
== _BTIAX @373
== BSUFINCH @374
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchMinsc2","LOCALS",0)~ THEN _BMINSC SuFinchNestingInstinct
@375 DO ~SetGlobal("SUFinchMinsc2","LOCALS",1)~                      
== BSUFINCH @376
=
@377
== _BMINSC @378
=
@379
== BSUFINCH @380
EXIT

// Banter w/ Safana about pirates? About talking to men?

CHAIN
IF ~CombatCounter(0) InParty("SAFANA")
See("SAFANA")
!StateCheck("SAFANA",STATE_SLEEPING)
Global("SUFinchSafana2","LOCALS",0)~ THEN BSUFINCH SuFinchSea
@381 DO ~SetGlobal("SUFinchSafana2","LOCALS",1)~
=
@382
== _BSAFAN @383
== BSUFINCH @384
== _BSAFAN @385
== BSUFINCH @386 
== _BSAFAN @387
=
@388
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchViconia1","LOCALS",0)~ THEN _BVICON SuFinchUnderdark
@389 DO ~SetGlobal("SUFinchViconia1","LOCALS",1)~                      
== BSUFINCH @390
== _BVICON @391
=
@392
== BSUFINCH @393
== _BVICON @394
EXIT

// Quayle banter - she's annoyed at gnomish qwirkiness. Feels left out, for being a quiet, content sort. Battle of the glasses. Deneirrath are just smarty wanna-bes, but at least they don't have to shout how brilliant they are all the time. You're lucky to be a gnome, my dear.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchQuayle1","LOCALS",0)~ THEN _BQUAYL SuFinchDeneir
@395 DO ~SetGlobal("SUFinchQuayle1","LOCALS",1)~
== BSUFINCH @396
== _BQUAYL @397
=
@398
=
@399
== BSUFINCH @400
== _BQUAYL @401
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchCoran2","LOCALS",0)~ THEN _BCORAN SuFinchFlirting
@402 DO ~SetGlobal("SUFinchCoran2","LOCALS",1)~
== BSUFINCH @403
== _BCORAN @404
== BSUFINCH @405
== _BCORAN @406
== BSUFINCH @407
== _BCORAN @408
== BSUFINCH @409 
== _BCORAN @410
EXIT

//After rest
CHAIN
IF ~CombatCounter(0) InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",STATE_SLEEPING)
Global("SUFinchKhalid2","LOCALS",0)~ THEN BSUFINCH SuFinchGlassesForeshadow
@411 DO ~SetGlobal("SUFinchKhalid2","LOCALS",1)~
== _BKHALI @412
== BSUFINCH @413
== _BKHALI @414
EXIT

CHAIN
IF WEIGHT #10 ~ CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchGarrick3","LOCALS",0)~ THEN _BGARRI SuFinchGarrickIsABook
@415 DO ~SetGlobal("SUFinchGarrick3","LOCALS",1)~
== BSUFINCH @416
== _BGARRI @417
== BSUFINCH @418
== _BGARRI @419 // Change to a simple 'How's that?'
== BSUFINCH @420
== _BGARRI @421
== BSUFINCH @422
=
@423
== _BGARRI @424 
== BSUFINCH @252
== _BGARRI @425 
=
@426
== BSUFINCH @427
== _BGARRI @428
== BSUFINCH @429
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAlora2","LOCALS",0)~ THEN _BALORA SuFinchYourFace
@444 DO ~SetGlobal("SUFinchAlora2","LOCALS",1)~
== BSUFINCH @445
== _BALORA @446
== BSUFINCH @447
== _BALORA @448
== BSUFINCH @449
== _BALORA @450
EXIT

// One Montaron Banter. Bet she's a wild one with a few drinks.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchMonty2","LOCALS",0)~ THEN _BMONTA SuFinchSororityGirl
@451 DO ~SetGlobal("SUFinchMonty2","LOCALS",1)~
== BSUFINCH @452
=
@453
== _BMONTA @454
== BSUFINCH @455
== _BMONTA @456
== BSUFINCH @457
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchMinsc3","LOCALS",0)~ THEN _BMINSC SuFinchLittleThang
@458 DO ~SetGlobal("SUFinchMinsc3","LOCALS",1)~                      
== BSUFINCH @459
== _BMINSC @460
=
@461
== BSUFINCH @462
== _BMINSC @463
== BSUFINCH @464
EXIT

CHAIN
IF WEIGHT #10 ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
TimeOfDay(NIGHT)
Global("SUFinchViconia2","LOCALS",0)~ THEN _BVICON SuFinchNight
@465 DO ~SetGlobal("SUFinchViconia2","LOCALS",1)~                      
== BSUFINCH @466
== _BVICON @467
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchQuayle2","LOCALS",0)~ THEN _BQUAYL SuFinchOfCourseWeMustHaveANoseBanter
@468 DO ~SetGlobal("SUFinchQuayle2","LOCALS",1)~
=
@469
== BSUFINCH @470
== _BQUAYL @471
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
!StateCheck("TIAX",STATE_SLEEPING)
Global("SUFinchTiax2","LOCALS",0)~ THEN BSUFINCH SuFinchYouRule
@476 DO ~SetGlobal("SUFinchTiax2","LOCALS",1)~
== _BTIAX @477
== BSUFINCH @478
== _BTIAX @479
== BSUFINCH @480
== _BTIAX @481
== BSUFINCH @482
=
@483
== _BTIAX @484
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchEldoth3","LOCALS",0)~ THEN _BELDOT SuFinchNotorious
@485 DO ~SetGlobal("SUFinchEldoth3","LOCALS",1)~
== BSUFINCH @486
== _BELDOT @487
=
@488
== BSUFINCH @489
=
@490
== _BELDOT @491
== BSUFINCH @492
== _BELDOT @493
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
AreaType(FOREST)
Global("SUFinchKhalid3","LOCALS",0)~ THEN _BKHALI SuFinchMud
@494 DO ~SetGlobal("SUFinchKhalid3","LOCALS",1)~
== BSUFINCH @495
== _BKHALI @496
== BSUFINCH @497
EXIT

CHAIN
IF ~CombatCounter(0) InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",STATE_SLEEPING)
AreaType(DUNGEON)
Global("SUFinchMonty1","LOCALS",0)~ THEN BSUFINCH SuFinchQuitBellowing
@498 DO ~SetGlobal("SUFinchMonty1","LOCALS",1)~
== _BMONTA @499
== BSUFINCH @500
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchQuayle3","LOCALS",0)~ THEN _BQUAYL SuFinchTheoreticallyDeepStuff
@501 DO ~SetGlobal("SUFinchQuayle3","LOCALS",1)~
== BSUFINCH @502
== _BQUAYL @503
== BSUFINCH @504
=
@505
=
@506
== _BQUAYL @507
=
@508
== BSUFINCH @509
== _BQUAYL @510
== BSUFINCH @511
== _BQUAYL @512
=
@513
EXIT

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
AreaType(FOREST)
Global("SUFinchJaheira3","LOCALS",0)~ THEN BSUFINCH SuFinchNeverSeenATree
@514 DO ~SetGlobal("SUFinchJaheira3","LOCALS",1)~
== _BJAHEI @515
== BSUFINCH @516
== _BJAHEI @517
== BSUFINCH @518
== _BJAHEI @519
EXIT

CHAIN
IF ~CombatCounter(0) InParty("DYNAHEIR")
See("DYNAHEIR")
!StateCheck("DYNAHEIR",STATE_SLEEPING)
InParty("Minsc")
Global("SUFinchDynaheir3","LOCALS",0)~ THEN BSUFINCH SuFinchMinscIsSwell
@520
DO ~SetGlobal("SUFinchDynaheir3","LOCALS",1)~
== _BDYNAH @521
== BSUFINCH @522
== _BDYNAH @523
== BSUFINCH @524
== _BDYNAH @525
== BSUFINCH @526
EXIT

//Banter with Faldorn about being raised by the Shadow Druids? Stuff about 'Don't most animals raise their own?"
// Faldorn could reply with stuff like "Some things are left to fend for themselves" "Wolves will foster a cub")

CHAIN
IF ~ CombatCounter(0)
InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",STATE_SLEEPING)
Global("SUFinchFaldorn3","LOCALS",0)~ THEN BSUFINCH SuOrphanFaldorns
@527  DO ~SetGlobal("SUFinchFaldorn3","LOCALS",1)~
== _BFALDO @528
== _BFALDO @529
== BSUFINCH @530
EXIT 

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchKagain2","GLOBAL",0)~ THEN _BKAGAI SuFinchAskNicely
@531 DO ~SetGlobal("SUFinchKagain2","GLOBAL",1)~
== BSUFINCH @532
== _BKAGAI @533
=
@534
EXIT

CHAIN
IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",STATE_SLEEPING)
Global("SUFinchEdwin2","LOCALS",0)~ THEN BSUFINCH SuFinchNashkel
@535 DO ~SetGlobal("SUFinchEdwin2","LOCALS",1)~
== _BEDWIN @536                        
== BSUFINCH @537
== _BEDWIN @538
== BSUFINCH @539
EXIT

// Banter with Ajantis about Waterdeep

CHAIN
IF ~CombatCounter(0) InParty("AJANTIS")
See("AJANTIS")
!StateCheck("AJANTIS",STATE_SLEEPING)
Global("SUFinchAjantis2","LOCALS",0)~ THEN BSUFINCH SuFinchBigCity
@540 DO ~SetGlobal("SUFinchAjantis2","LOCALS",1)~
== _BAJANT @541
== BSUFINCH @542
== _BAJANT @543
== BSUFINCH @544
=
@545
== _BAJANT @546
== BSUFINCH @547
== _BAJANT @548
=
@549
== BSUFINCH @550
== _BAJANT @551
EXIT

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
AreaType(FOREST)
Global("SUFinchJaheira4","LOCALS",0)~ THEN BSUFINCH SuFinchBoscoe 
@552 DO ~SetGlobal("SUFinchJaheira4","LOCALS",1)~
== _BJAHEI @553
== SUFINCH @554
== _BJAHEI @555
== SUFINCH @556
== _BJAHEI @557
== SUFINCH @558
== _BJAHEI @559
== SUFINCH @560
== _BJAHEI @561
== SUFINCH @562
== _BJAHEI @563
= @564
== SUFINCH @565
EXIT

// Kivan banter about sharing silence.

CHAIN
IF WEIGHT #10 ~CombatCounter(0)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchKivan1", "LOCALS", 0)~ THEN _BKIVAN SuFinchSilence
@566 DO ~SetGlobal("SUFinchKivan1", "LOCALS", 1)~
== BSUFINCH @567
== _BKIVAN @568
== _BSHART IF ~InParty("Sharteel")~ THEN @570
== _BALORA IF ~InParty("Alora")~ THEN @572 
== _BTIAX IF ~InParty("Tiax")~ THEN @574
== _BKIVAN @575
EXIT

CHAIN
IF ~CombatCounter(0) InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",STATE_SLEEPING)
LevelGT("Garrick", 3)
HPPercentLT("Garrick",20)
Global("SUFinchGarrick4","LOCALS",0)~ THEN BSUFINCH SuFinchOuchieGarrick
@576 DO ~SetGlobal("SUFinchGarrick4","LOCALS",1) MoveToObject("Garrick")~
= @577
== _BGARRI @578
=
@579
== BSUFINCH @580 DO ~ForceSpell("Garrick",CLERIC_CURE_LIGHT_WOUNDS)~
== _BGARRI @581
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
AreaType(FOREST)
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchTiax3","LOCALS",0)~ THEN _BTIAX SuFinchAnts
@582 DO ~SetGlobal("SUFinchTiax3","LOCALS",1)~
== BSUFINCH @583
== _BTIAX @584
== BSUFINCH @585
EXIT

CHAIN
IF ~InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("SUFinchImoen2","LOCALS",0)~ THEN _BIMOEN SuFinchCandlekeep
@586 DO ~SetGlobal("SUFinchImoen2","LOCALS",1)~                      
== BSUFINCH @587
== _BIMOEN @588
== BSUFINCH @589
== _BIMOEN @590
== BSUFINCH @591
== _BIMOEN @592 
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAlora3","GLOBAL",0)~ THEN _BALORA SuFinchYourFace
@593 DO ~SetGlobal("SUFinchAlora3","GLOBAL",1)~
== BSUFINCH @594
== _BALORA @595
== BSUFINCH @596
== _BALORA @597
== BSUFINCH @598
== _BALORA @599
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchSharteel2","LOCALS",0)~ THEN _BSHART SuFinchManGod
@600 DO ~SetGlobal("SUFinchSharteel2","LOCALS",1)~
== BSUFINCH @601
== _BSHART @602
== BSUFINCH @603
== _BSHART @604
EXIT

// Jaheira

CHAIN
IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
!Dead("Khalid")
Global("SUFinchJaheira2","GLOBAL",1)
Global("SUFinchJaheira1","LOCALS",0)~ THEN BSUFINCH SuFinchLove
@430 DO ~SetGlobal("SUFinchJaheira1","LOCALS",1)~
== _BJAHEI IF  ~InParty("Skie")~ THEN @433   
== _BJAHEI IF ~!InParty("Skie") InParty("Safana")~ THEN @435   
== BSUFINCH @436
=
@437
== _BJAHEI @438
== BSUFINCH @439
== _BJAHEI @440
== BSUFINCH @441
== _BJAHEI @442
== BSUFINCH @443
EXIT


CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAlora3","GLOBAL",1)
Global("SUFinchXan2","LOCALS",1)~ THEN _BXANNN SuFinchYouSmileTooMuchNow
@605 DO ~SetGlobal("SUFinchXan2","LOCALS",1)~
== BSUFINCH @606
== _BXANNN @607
== BSUFINCH @608
== _BXANNN @609
EXIT

// Banter with Yeslick about recording his story, ends with Yeslick saying some tragedies should be forgotten.

CHAIN
IF ~ CombatCounter(0) InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",STATE_SLEEPING)
Global("SUFinchYeslick3","LOCALS",0)~ THEN BSUFINCH SuYesLegacy
@610 DO ~SetGlobal("SUFinchYeslick3","LOCALS",1)~
== _BYESLI @611
== BSUFINCH @612
=
@613
== _BYESLI @614
== BSUFINCH @615
=
@616
== _BYESLI @617
== BSUFINCH @618
=
@619
== _BYESLI @620
EXIT


CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
AreaType(CITY)
Global("SUFinchFaldorn4","LOCALS",0)~ THEN _BFALDO SuFinchCobblestonesSux
@621 DO ~SetGlobal("SUFinchFaldorn4","LOCALS",1)~
== BSUFINCH @622
== _BFALDO @623
== BSUFINCH @624
== _BFALDO @625
== BSUFINCH @626
=
@627
EXIT

CHAIN
IF ~CombatCounter(0) InParty("KIVAN")
See("KIVAN")
!StateCheck("KIVAN",STATE_SLEEPING)
Global("SUFinchKivan2","LOCALS",0)~ THEN BSUFINCH SuFinchLookStraightAhead
@628 DO ~SetGlobal("SUFinchKivan2","LOCALS",1)~
== _BKIVAN @629
== BSUFINCH @630
=
@631
=
@632
== _BKIVAN @633
== BSUFINCH @634
== _BKIVAN @635
EXIT

// Banter with Ajantis about mapping a dungeon.

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchAjantis3","LOCALS",0)
AreaType(DUNGEON)~ THEN _BAJANT SuFinchCourageLecture
@636 DO ~SetGlobal("SUFinchAjantis3","LOCALS",1)~
== BSUFINCH @637
== _BAJANT @638
== BSUFINCH @639
EXIT

//Banter about cloud watching. Most awful stupid banter ever.

CHAIN
IF WEIGHT #2 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
InParty("ALORA")
See("ALORA")
!StateCheck("ALORA",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("SUFinchImoen2","LOCALS",0)~ THEN _BIMOEN SuFinchCloudWatching
@640 DO ~SetGlobal("SUFinchImoen2","LOCALS",1)~
== _BALORA @641
== _BIMOEN @642
== BSUFINCH @643
== _BALORA @644
== _BIMOEN @645
=
@646
EXIT

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchXan3","LOCALS",1)~ THEN _BXANNN SuFinchShesSmilingAgain
@647 DO ~SetGlobal("SUFinchXan3","LOCALS",1)~
== BSUFINCH @648
== _BXANNN @649
== BSUFINCH @650
== _BXANNN @651
EXIT

CHAIN
IF ~CombatCounter(0) InParty("Kagain")
See("Kagain")
!StateCheck("Kagain",STATE_SLEEPING)
Global("SUFinchKagain2","GLOBAL",1)
Global("SUFinchKagain3","LOCALS",0)~ THEN BSUFINCH SuFinchDoubleBooked
@652 DO ~SetGlobal("SUFinchKagain3","LOCALS",1)~
== _BKAGAI @653
== BSUFINCH @654
== _BKAGAI @655
== BSUFINCH @656
== _BKAGAI @657
=
@658
== BSUFINCH @659
== _BKAGAI @660
EXIT 

//Banter where Faldorn complains about parchment paper, ink, vellum, stolen from nature. Deneir is an affront, the // enemy of the Oak Father

CHAIN
IF WEIGHT #10 ~CombatCounter(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",STATE_SLEEPING)
Global("SUFinchFaldorn1","LOCALS",0)~ THEN _BFALDO SuFinchDeneirAsAffront
@661 DO ~SetGlobal("SUFinchFaldorn1","LOCALS",1)~
== BSUFINCH @662
== _BFALDO @663
== BSUFINCH @664
== _BFALDO @665
=
@666
== BSUFINCH @667
== _BFALDO @668
== BSUFINCH @669
EXIT