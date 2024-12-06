BEGIN SUFINCHJ

IF ~Global("SUFinchQuestFailed", "GLOBAL",1)
Global("SUFinchPissed", "GLOBAL",0)~ THEN BEGIN SuFinchQuestScramALamADingDong
SAY @800
=
@801
IF ~~ THEN DO ~SetGlobal("SUFinchPissed", "GLOBAL",1) 
LeaveParty()
EscapeArea()~ UNSOLVED_JOURNAL @802 EXIT
END

IF ~PartyHasItem("SUFBOOK1")
Global("SUFinchBook1Comment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBook1
  SAY @803
  =
  @804
  =
  @805
  IF ~~ THEN DO ~SetGlobal("SUFinchBook1Comment", "LOCALS", 1)
  AddExperienceParty(400)
~ EXIT
END

IF ~PartyHasItem("SUFBOOK2")
Global("SUFinchBook2Comment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBook2
  SAY @806
  =
  @807
  IF ~~ THEN DO ~SetGlobal("SUFinchBook2Comment", "LOCALS", 1)
  AddExperienceParty(400)
~ EXIT
END

IF ~PartyHasItem("SUFBOOK3")
Global("SUFinchBook3Comment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBook3
  SAY @808
  =
  @809
  IF ~~ THEN DO ~SetGlobal("SUFinchBook3Comment", "LOCALS", 1)
  AddExperienceParty(400)
~ EXIT
END

IF ~PartyHasItem("SUFBOOK4")
Global("SUFinchBook4Comment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBook4
  SAY @810
  IF ~~ THEN DO ~SetGlobal("SUFinchBook4Comment", "LOCALS", 1)
  AddExperienceParty(400)
~ EXIT
END

IF ~PartyHasItem("SUFBOOKB")
Global("SUFinchBookBComment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBookB
  SAY @1144
  IF ~~ THEN DO ~SetGlobal("SUFinchBookBComment", "LOCALS", 1)
  AddExperienceParty(400)
~ EXIT
END

IF ~PartyHasItem("SUFBOOK5")
Global("SUFinchBook5Comment", "LOCALS", 0)~ THEN BEGIN SuFinchQuestFoundBook5
  SAY @811
  IF ~~ THEN DO ~SetGlobal("SUFinchBook5Comment", "LOCALS", 1)
  AddExperienceParty(600)
~ UNSOLVED_JOURNAL @812 EXIT
END

IF ~IsGabber(Player1)
   ~ THEN BEGIN SuFinchPCInit
 SAY @909
 ++ @910 EXIT
+ ~Global("SuFinchPCWaterdeep","GLOBAL",0)~ + @911 GOTO SuFinchWaterdeep
+ ~Global("SuFinchPCCleric","GLOBAL",0)~ + @912 GOTO SuFinchCleric
+ ~Global("SuFinchPCQuest1","GLOBAL",0) Global("SUFinchStartedLibrary", "GLOBAL",0)~ + @913 GOTO SuFinchQuest1
+ ~Global("SuFinchPCQuest2","GLOBAL",0) Global("SUFinchStartedLibrary", "GLOBAL",0) !PartyHasItem("SUFBOOK5")~ + @914 GOTO SuFinchQuest2
+ ~Global("SuFinchPCOtherInterest","GLOBAL",0)~ + @915 GOTO SuFinchOtherInterests
+ ~Global("SuFinchPCFaveAuthor","GLOBAL",0)~ + @916 GOTO SuFinchFaveAuthor
IF ~RandomNum(5,1) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1126 GOTO SuFinchTug1
IF ~RandomNum(5,2) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1126 GOTO SuFinchTug2
IF ~RandomNum(5,3) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1126 GOTO SuFinchTug3
IF ~RandomNum(5,4) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1126 GOTO SuFinchTug4
IF ~RandomNum(5,5) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1126 GOTO SuFinchTug5
IF ~RandomNum(8,1) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead1
IF ~RandomNum(8,2) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead2
IF ~RandomNum(8,3) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead3
IF ~RandomNum(8,4) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead4
IF ~RandomNum(8,5) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead5
IF ~RandomNum(8,6) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead6
IF ~RandomNum(8,7) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead7
IF ~RandomNum(8,8) Global("SUFinchStartedLibrary", "GLOBAL",1)~ THEN REPLY @1127 GOTO SuFinchRead8
END

IF ~~ THEN BEGIN SuFinchWaterdeep
SAY @917
++ @918 DO ~SetGlobal("SuFinchPCWaterdeep","GLOBAL",1)~ GOTO SuFinchOkayIllTellYa
++ @919 DO ~SetGlobal("SuFinchPCWaterdeep","GLOBAL",1)~ GOTO SuFinchOkayIllTellYa
++ @920 GOTO SuFinchSorryImShy
++ @921 DO ~SetGlobal("SuFinchPCWaterdeep","GLOBAL",1)~ GOTO SuFinchOkayIllTellYa
++ @922 DO ~SetGlobal("SuFinchPCWaterdeep","GLOBAL",1)~ GOTO SuFinchImShyBecause
END

IF ~~ THEN BEGIN SuFinchOkayIllTellYa
SAY @923 
IF ~~ THEN GOTO SuFinchQuietStudious
END

IF ~~ THEN BEGIN SuFinchQuietStudious
SAY @924
=
@925
=
@926
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchSorryImShy
SAY @927
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchImShyBecause
SAY @928
++ @929 GOTO SuFinchQuietStudious
++ @930 GOTO SuFinchSorryImShy
END

IF ~~ THEN BEGIN SuFinchCleric
SAY @931
=
@932
=
@933
++ @934 DO ~SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchArentYouSmart
++ @935 DO ~SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchDoubtful
+ ~!Race([PC], HALFORC)~ + @936 DO ~ SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchSmooshed
+ ~Race([PC], HALFORC)~ + @936 DO ~ SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchYouMakeMeNervous
++ @937 DO ~SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchMeanThingToSay
++ @938 DO ~SetGlobal("SuFinchPCCleric","GLOBAL",1)~ GOTO SuFinchWhatDoesThatMean
END

IF ~~ THEN BEGIN SuFinchArentYouSmart
SAY @939
=
@940
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchDoubtful
SAY @941
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchSmooshed
SAY @942
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchYouMakeMeNervous
SAY @943
=
@944
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchMeanThingToSay
SAY @945
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchWhatDoesThatMean
SAY @946
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchQuest1
SAY @947
=
@948
IF ~~ THEN DO ~SetGlobal("SuFinchPCQuest1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchQuest2
SAY @949
=
@950
IF ~~ THEN DO ~SetGlobal("SuFinchPCQuest2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchOtherInterests
SAY @951
=
@952
IF ~~ THEN DO ~SetGlobal("SuFinchPCOtherInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchFaveAuthor
SAY @953
=
@954
IF ~~ THEN DO ~SetGlobal("SuFinchPCFaveAuthor","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchTug1
SAY @1128
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchTug2
SAY @1129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchTug3
SAY @1130
= @1139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchTug4
SAY @1131
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchTug5
SAY @1132
= @1140
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead1
SAY @1133
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead2
SAY @1134
= @1141
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead3
SAY @1135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead4
SAY @1136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead5
SAY @1137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead6
SAY @1138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead7
SAY @1142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchRead8
SAY @1143
IF ~~ THEN EXIT
END

I_C_T %er_tutu%ALATOS 0 SuFinchThievesGuild
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@813
END

I_C_T %er_tutu%ALYTH 2 SuFinchElfsong
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@814
END

I_C_T %er_tutu%AMNIS4 2 SuFinchOutsideNashMines
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@815
END

I_C_T %er_tutu%ARDROU 1 SuFinchSIrenesCallMum
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@818
END

I_C_T %er_tutu%BART6 1 SuFinchBartCandlekeep
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@819
END

I_C_T %er_tutu%BELAND 5 SuFinchHallOfWonders1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@821
END

I_C_T %er_tutu%BELT 11 SuFinchBall
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@822
END

I_C_T %er_tutu%BENTAN 1 SuFinchIlmater1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@823
END

I_C_T %er_tutu%BENTAN 2 SuFinchIlmater2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@823
END

I_C_T %er_tutu%BENTAN 3 SuFinchIlmater3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@823
END

I_C_T %er_tutu%BOYBE1 1 SuFinchEldothUglyStick
== %er_tutu%ELDOTJ IF ~InParty("Eldoth") !Dead("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@824
END

I_C_T %er_tutu%CADDER 0 SuFinchCadderly
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@825
== %er_tutu%CADDER IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @826
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @827
== %er_tutu%CADDER IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @828
END

I_C_T %er_tutu%CAEDMO 1 SuFinchFollowed
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@829
END

I_C_T %er_tutu%CHANTH 2 SuFinchBookOfWisdom
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@830
=
@831
END

I_C_T %er_tutu%CHELAN 2 SuFinchHappyFisherman
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@832
END

I_C_T %er_tutu%CHELAN 3 SuFinchHappyFisherman1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@832
END

I_C_T %er_tutu%CORAN 6 SuFinchCoran1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@834
END

I_C_T %er_tutu%CUTCHAR 1 SuFinchExcavate
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@835
END

I_C_T2 %er_tutu%FAHRIN 1 SuFinchScrollOWisdom
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@836
END

I_C_T2 %er_tutu%FAHRIN 2 SuFinchScrollOWisdom1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@836
END

I_C_T %er_tutu%KEEPER 2 SuFinchCandlekeepGate1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@906
== %er_tutu%KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@908
END

I_C_T %er_tutu%KEEPER 3 SuFinchCandlekeepGate2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@906
== %er_tutu%KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@908
END

I_C_T %er_tutu%KEEPER 7 SuFinchCandlekeepGate3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@906
== %er_tutu%KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@908
END

// New Interjections
I_C_T %er_tutu%FARM3 3 SuFinchFarmer1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1066
END

I_C_T %er_tutu%FARM4 1 SuFinchFarmer2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1067
END

I_C_T %er_tutu%FARMBR 6 SuFinchFarmerBrun
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1068
END

I_C_T %er_tutu%FARTHI 0 SuFinchDollGirl
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1069
END

I_C_T %er_tutu%FCOOK2 0 SuFinchShagCook1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1070
END

I_C_T %er_tutu%FCOOK2 1 SuFinchShagCook2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1071
END

I_C_T %er_tutu%FCOOK3 1 SuFinchCook3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1072
END

I_C_T %er_tutu%FECOOK 0 SuFinchCookBrat
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1075
== %er_tutu%FECOOK IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1076
END

I_C_T %er_tutu%FELONI 1 SuFinchBully
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1077
END

I_C_T %er_tutu%FENRUS 10 SuFinchDurlagStory
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1078
=
@1079
END

I_C_T %er_tutu%FERGUS 1 SuFinchAngelSkinRing
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1080
END

I_C_T3 %er_tutu%FIREBE %er_fireb1% SuFinchFirebeard1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1081
=
@1082
== ~%er_tutu%FIREBE~ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1150
END

I_C_T3 %er_tutu%FIREBE %er_fireb2% SuFinchFirebeard1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1083
=
@1084
== ~%er_tutu%FIREBE~ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1150
END

I_C_T %er_tutu%FIREBE 5 SuFinchFirebeard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1085
END

I_C_T %er_tutu%FIREBE 6 SuFinchFirebeard3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1086
END

I_C_T %er_tutu%FLAM10 3 SuFinchFlamingBall
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1087
END

I_C_T2 %er_tutu%FORTHE 1 SuFinchRudeBard
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1089
END

I_C_T2 %er_tutu%FORTHE 8 SuFinchRudeBard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1090
END

I_C_T2 %er_tutu%FORTHE 10 SuFinchRudeBard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1090
END

I_C_T %er_ftown2% 1 SuFinchWarning
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1091
END

I_C_T %er_ftown3% 0 SuFinchFarmer3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1092
END

I_C_T %er_tutu%FTOWBA 0 SuFinchMassMurder
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1093
=
@1094
END

I_C_T %er_tutu%FTOWFR 13 SuFinchPopularity
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1095
END

I_C_T2 %er_tutu%GALILE 2 SuFinchGalileo
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1096
END

I_C_T2 %er_tutu%GALLOR 2 SuFinchNoBribeExcavation
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1097
END

I_C_T %er_tutu%GALTOK 2 SuFinchNashkelMinesKobolds
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1098
=
@1099
END

I_C_T %er_tutu%GAMES2 2 SuFinchBartendersAxe
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1100
END

I_C_T %er_tutu%GAZIB 0 SuFinchOompah
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1101
END

I_C_T %er_tutu%GNARL 4 SuFinchHead
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1102
END

I_C_T2 %er_tutu%GREYWO 6 SuFinchGreywolf
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1103
END

I_C_T2 %er_tutu%HAFIZ 6 SuFinchHafiz
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1104
END

I_C_T2 %er_tutu%HICK 1 SuFinchAmnishSoldiers
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1105
END

I_C_T %er_tutu%ITHTYL 4 SuFinchIthtyl
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1107
=
@1108
=
@1109
END

I_C_T %er_tutu%KARP 2 SuFinchKarpMines
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1110
=
@1111
END

I_C_T2 %er_tutu%KERRAC 3 SuFinchHistorians
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1112
END

I_C_T %er_tutf%LAMBRID 2 SuFinchBGBridge
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1113
END

I_C_T %er_tutu%LANDRI 9 SuFinchLandrin
== %er_tutu%LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1114
== SUFINCHJ IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1115
== %er_tutu%LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1116
== %er_tutu%LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1117
== SUFINCHJ IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1118
== %er_tutu%LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @1119 DO ~SetGlobal("SuFinchLandrin", "LOCALS", 1)~
END

I_C_T2 %er_tutu%LAOLA 3 SuFinchLaola
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1120
END

I_C_T2 %er_tutu%LARYSS 1 SuFinchBrage
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1121
END

I_C_T %er_tutu%LENA 2 SuFinchSickSamuel
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1122
END

I_C_T %er_tutu%MCOOK4 0 SuFinchDukesCook
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1123
END

I_C_T %er_tutu%TENYA 16 SuFinchUmberleeTalosQuest1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@1124
=
@1125
END

//End New Interjections

I_C_T %er_tutu%SHARTJ 1 SuFinchSTAngelo
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@837
END

I_C_T %er_tazok% 0 SuFinchSeesTazok
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@838
END

I_C_T %er_tazok% 33 SuFinchSeesTazok2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@838
END

I_C_T %er_tutu%ZOMBIE 1 SuFinchZombie
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN
@839
END

//Quest crap 

BEGIN SUTRASK

CHAIN
IF WEIGHT #-1 ~ !NumTimesTalkedTo(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
!PartyHasItem("SUFBOOK5")
Global("SUFinchQuestFailed", "GLOBAL",0)
Global("SUFinchStartedLibrary", "GLOBAL",0)~ THEN SUTRASK SuFinchTraskHaveNoLibrary
@840
== SUFINCHJ @841
== SUTRASK @842
EXIT

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
!PartyHasItem("SUFBOOK5")
Global("SUFinchQuestFailed", "GLOBAL",0)
Global("SUFinchStartedLibrary", "GLOBAL",0)
Global("SUFinchMetTrask", "GLOBAL", 0)~ THEN SUTRASK SuFinchTraskMeetNoLibrary
@955 
=
@956 DO ~SetGlobal("SUFinchMetTrask", "GLOBAL", 1)~
== SUFINCHJ @957
== SUTRASK @842
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
PartyHasItem("SUFBOOK5")
Global("SUFinchQuestFailed", "GLOBAL",0)
Global("SUFinchStartedLibrary", "GLOBAL",0)~ THEN SUTRASK SuFinchTraskHaveLibrary
@843  
== SUFINCHJ @844
== SUTRASK @845 DO ~TakePartyItem("SUFBOOK5") 
SetGlobal("SUFinchStartedLibrary", "GLOBAL",1) 
AddXPObject("sufinch",1250)
AddJournalEntry(@67, QUEST_DONE)
EraseJournalEntry(@812)~
EXIT

APPEND SUTRASK

IF WEIGHT #-1 ~
Global("SUFinchQuestFailed", "GLOBAL",1)~ THEN BEGIN SUFinchYouFail
SAY @846
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuTraskDefault
SAY @847
IF ~~ THEN EXIT 
END

END

APPEND %er_tutu%NOBL2

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchNobMQuest2", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobMQuest3", "LOCALS",0)~ THEN BEGIN SuFinchQuestNM3
SAY @848
=
@849 
IF ~~ THEN DO ~SetGlobal("SUFinchNobMQuest3", "LOCALS",1) SetGlobal("SUFinchQuestFailed", "GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchNobMPlacated
SAY @850
=
@851
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobMJealous
SAY @852
IF ~~ THEN DO ~GiveGoldForce(1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchDirectToTrask
SAY @853
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobMPlacated2
SAY @854
=
@855
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobMNoSoupForYou1
SAY @856
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchDirectToTrask2
SAY @857
IF ~~ THEN EXIT
END

END

APPEND %er_tutu%NOBW2

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
AreaCheck("%er_NashkelManorL1%")
Global("SUFinchNobWQuest2", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest3", "LOCALS",0)~ THEN BEGIN SuFinchQuestNW3
SAY @858 
=
@859
IF ~~ THEN DO ~SetGlobal("SUFinchNobWQuest3", "LOCALS",1) SetGlobal("SUFinchQuestFailed", "GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchNobWCharmer
SAY @860
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobWGettingMiffy2
SAY @861
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobWPlacated2
SAY @862
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobWMyHome
SAY @863
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchDirectToTrask3
SAY @864
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobWRich
SAY @865
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuFinchNobWNoSoupForYou2
SAY @866
IF ~~ THEN EXIT
END

END

APPEND %er_tutu%SAMANT

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchSamQuest1", "LOCALS",0)~ THEN BEGIN SuFinchQuestSam1
SAY @867 
IF ~~ THEN DO ~SetGlobal("SUFinchSamQuest1", "LOCALS",1)~ EXIT
END

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchQuestFailed", "GLOBAL",0)
Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchSamQuest2", "LOCALS",0)~ THEN BEGIN SuFinchQuestSam2
SAY @868 
IF ~~ THEN DO ~SetGlobal("SUFinchSamQuest2", "LOCALS",1)~ EXIT
END

END

CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Gender(Player1, Male)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest1", "LOCALS",0)~ THEN %er_tutu%NOBW2 SuFinchQuestNWMan1
@869 DO ~SetGlobal("SUFinchNobWQuest1", "LOCALS",1)~
== SUFINCHJ @870
END
++ @871 EXTERN %er_tutu%NOBW2 SuFinchNobWCharmer
++ @872 EXTERN %er_tutu%NOBW2 SuFinchNobWGettingMiffy2
++ @873 EXTERN %er_tutu%NOBW2 SuFinchNobWPlacated2
++ @874 EXTERN %er_tutu%NOBW2 SuFinchNobWMyHome
++ @875 EXTERN %er_tutu%NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Gender(Player1, Female)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest1", "LOCALS",0)~ THEN %er_tutu%NOBW2 SuFinchQuestNWWoman1
@876 DO ~SetGlobal("SUFinchNobWQuest1", "LOCALS",1)~
== SUFINCHJ @877
END
++ @878 EXTERN %er_tutu%NOBW2 SuFinchNobWPlacated2
++ @879 EXTERN %er_tutu%NOBW2 SuFinchNobWGettingMiffy2
++ @873 EXTERN %er_tutu%NOBW2 SuFinchNobWPlacated2
++ @874 EXTERN %er_tutu%NOBW2 SuFinchNobWMyHome
++ @875 EXTERN %er_tutu%NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchNobWQuest1", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest2", "LOCALS",0)~ THEN %er_tutu%NOBW2 SuFinchQuestNW2
@880 DO ~SetGlobal("SUFinchNobWQuest2", "LOCALS",1)~
== SUFINCHJ @881
END
++ @882 EXTERN %er_tutu%NOBW2 SuFinchNobWRich
++ @883 EXIT
++ @884 EXTERN %er_tutu%NOBW2 SuFinchNobWNoSoupForYou2
++ @885 EXTERN %er_tutu%NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~!NumTimesTalkedTo(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchMetTrask", "GLOBAL", 0)
Global("SUFinchBerrunQuest", "LOCALS",0)~ THEN %er_tutu%BERRUN SuFinchQuest
@886 DO ~SetGlobal("SUFinchBerrunQuest", "LOCALS",1)~
== SUFINCHJ @887
== %er_tutu%BERRUN @888
=
@889 DO ~AddJournalEntry(@68, QUEST)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobMQuest1", "LOCALS",0)~ THEN %er_tutu%NOBL2 SuFinchQuestNM1
@890 DO ~SetGlobal("SUFinchNobMQuest1", "LOCALS",1)~
=
@891
== SUFINCHJ @892
END
++ @893 EXTERN %er_tutu%NOBL2 SuFinchNobMPlacated
++ @894 EXTERN %er_tutu%NOBL2 SuFinchNobMGettingMiffy
++ @895 EXTERN %er_tutu%NOBL2 SuFinchNobMJealous
++ @896 EXTERN %er_tutu%NOBL2 SuFinchNobMGettingMiffy
++ @897  EXTERN %er_tutu%NOBL2 SuFinchDirectToTrask


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", CD_STATE_NOTVALID)
Global("SUFinchNobMQuest1", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobMQuest2", "LOCALS",0)~ THEN %er_tutu%NOBL2 SuFinchQuestNM2
@898 DO ~SetGlobal("SUFinchNobMQuest2", "LOCALS",1)~
== SUFINCHJ @899
END
++ @900 EXTERN %er_tutu%NOBL2 SuFinchNobMPlacated2
++ @901 EXIT
++ @884 EXTERN %er_tutu%NOBL2 SuFinchNobMNoSoupForYou1
++ @885  EXTERN %er_tutu%NOBL2 SuFinchDirectToTrask2


CHAIN
IF ~~ THEN %er_tutu%NOBL2 SuFinchNobMGettingMiffy
@902
== SUFINCHJ @903
== %er_tutu%NOBL2 @904
EXIT
