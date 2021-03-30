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

I_C_T _ALATOS 0 SuFinchThievesGuild
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@813
END

I_C_T _ALYTH 2 SuFinchElfsong
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@814
END

I_C_T _AMNIS4 2 SuFinchOutsideNashMines
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@815
END

I_C_T _ARDROU 1 SuFinchSIrenesCallMum
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@818
END

I_C_T _BART6 1 SuFinchBartCandlekeep
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@819
END

I_C_T _BELAND 5 SuFinchHallOfWonders1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@821
END

I_C_T _BELT 11 SuFinchBall
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@822
END

I_C_T _BENTAN 1 SuFinchIlmater1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@823
END

I_C_T _BENTAN 2 SuFinchIlmater2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@823
END

I_C_T _BENTAN 3 SuFinchIlmater3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@823
END

I_C_T _BOYBE1 1 SuFinchEldothUglyStick
== _ELDOTJ IF ~InParty("Eldoth") !Dead("Eldoth") !StateCheck("Eldoth",STATE_SLEEPING) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@824
END

I_C_T _CADDER 0 SuFinchCadderly
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@825
== _CADDER IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @826
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @827
== _CADDER IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @828
END

I_C_T _CAEDMO 1 SuFinchFollowed
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@829
END

I_C_T _CHANTH 2 SuFinchBookOfWisdom
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@830
=
@831
END

I_C_T _CHELAN 2 SuFinchHappyFisherman
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@832
END

I_C_T _CHELAN 3 SuFinchHappyFisherman1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@832
END

I_C_T _CORAN 6 SuFinchCoran1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@834
END

I_C_T _CUTCHAR 1 SuFinchExcavate
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@835
END

I_C_T2 _FAHRIN 1 SuFinchScrollOWisdom
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@836
END

I_C_T2 _FAHRIN 2 SuFinchScrollOWisdom1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@836
END

I_C_T _KEEPER 2 SuFinchCandlekeepGate1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@906
== _KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@908
END

I_C_T _KEEPER 3 SuFinchCandlekeepGate2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@906
== _KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@908
END

I_C_T _KEEPER 7 SuFinchCandlekeepGate3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@906
== _KEEPER IF ~~ THEN @907
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@908
END

// New Interjections
I_C_T _FARM3 3 SuFinchFarmer1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1066
END

I_C_T _FARM4 1 SuFinchFarmer2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1067
END

I_C_T _FARMBR 6 SuFinchFarmerBrun
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1068
END

I_C_T _FARTHI 0 SuFinchDollGirl
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1069
END

I_C_T _FCOOK2 0 SuFinchShagCook1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1070
END

I_C_T _FCOOK2 1 SuFinchShagCook2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1071
END

I_C_T _FCOOK3 1 SuFinchCook3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1072
END

I_C_T _FECOOK 0 SuFinchCookBrat
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1075
== _FECOOK IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1076
END

I_C_T _FELONI 1 SuFinchBully
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1077
END

I_C_T _FENRUS 10 SuFinchDurlagStory
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1078
=
@1079
END

I_C_T _FERGUS 1 SuFinchAngelSkinRing
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1080
END

I_C_T2 _FIREBE 2 SuFinchFirebeard1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1081
=
@1082
END

I_C_T2 _FIREBE 3 SuFinchFirebeard1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1083
=
@1084
END

I_C_T _FIREBE 5 SuFinchFirebeard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1085
END

I_C_T _FIREBE 6 SuFinchFirebeard3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1086
END

I_C_T _FLAM10 3 SuFinchFlamingBall
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1087
END

I_C_T2 _FORTHE 1 SuFinchRudeBard
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1089
END

I_C_T2 _FORTHE 8 SuFinchRudeBard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1090
END

I_C_T2 _FORTHE 10 SuFinchRudeBard2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1090
END

I_C_T _FTOWN2 1 SuFinchWarning
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1091
END

I_C_T _FTOWN3 0 SuFinchFarmer3
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1092
END

I_C_T _FTOWBA 0 SuFinchMassMurder
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1093
=
@1094
END

I_C_T _FTOWFR 13 SuFinchPopularity
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1095
END

I_C_T2 _GALILE 2 SuFinchGalileo
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1096
END

I_C_T2 _GALLOR 2 SuFinchNoBribeExcavation
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1097
END

I_C_T _GALTOK 2 SuFinchNashkelMinesKobolds
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1098
=
@1099
END

I_C_T _GAMES2 2 SuFinchBartendersAxe
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1100
END

I_C_T _GAZIB 0 SuFinchOompah
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1101
END

I_C_T _GNARL 4 SuFinchHead
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1102
END

I_C_T2 _GREYWO 6 SuFinchGreywolf
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1103
END

I_C_T2 _HAFIZ 6 SuFinchHafiz
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1104
END

I_C_T2 _HICK 1 SuFinchAmnishSoldiers
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1105
END

I_C_T _ITHTYL 4 SuFinchIthtyl
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1107
=
@1108
=
@1109
END

I_C_T _KARP 2 SuFinchKarpMines
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1110
=
@1111
END

I_C_T2 _KERRAC 3 SuFinchHistorians
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1112
END

I_C_T _LAMBRID 2 SuFinchBGBridge
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1113
END

I_C_T _LANDRI 9 SuFinchLandrin
== _LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1114
== SUFINCHJ IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1115
== _LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1116
== _LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1117
== SUFINCHJ IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1118
== _LANDRI IF ~Global("SuFinchLandrin", "LOCALS", 0) InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN @1119 DO ~SetGlobal("SuFinchLandrin", "LOCALS", 1)~
END

I_C_T2 _LAOLA 3 SuFinchLaola
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1120
END

I_C_T2 _LARYSS 1 SuFinchBrage
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1121
END

I_C_T _LENA 2 SuFinchSickSamuel
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1122
END

I_C_T _MCOOK4 0 SuFinchDukesCook
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1123
END

I_C_T _TENYA 16 SuFinchUmberleeTalosQuest1
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@1124
=
@1125
END

//End New Interjections

I_C_T _SHARTJ 1 SuFinchSTAngelo
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@837
END

I_C_T _TAZOK 0 SuFinchSeesTazok
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@838
END

I_C_T _TAZOK 33 SuFinchSeesTazok2
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@838
END

I_C_T _ZOMBIE 1 SuFinchZombie
== SUFINCHJ IF ~InParty("sufinch") !Dead("sufinch") !StateCheck("sufinch",STATE_SLEEPING)~ THEN
@839
END

//Quest crap 

BEGIN SUTRASK

CHAIN
IF WEIGHT #-1 ~ !NumTimesTalkedTo(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
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
!StateCheck("sufinch", STATE_SLEEPING)
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
!StateCheck("sufinch", STATE_SLEEPING)
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

APPEND _NOBL2

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
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

APPEND _NOBW2

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
AreaCheck("FW4804")
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

APPEND _SAMANT

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchSamQuest1", "LOCALS",0)~ THEN BEGIN SuFinchQuestSam1
SAY @867 
IF ~~ THEN DO ~SetGlobal("SUFinchSamQuest1", "LOCALS",1)~ EXIT
END

IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchQuestFailed", "GLOBAL",0)
Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchSamQuest2", "LOCALS",0)~ THEN BEGIN SuFinchQuestSam2
SAY @868 
IF ~~ THEN DO ~SetGlobal("SUFinchSamQuest2", "LOCALS",1)~ EXIT
END

END

CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Gender(Player1, Male)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest1", "LOCALS",0)~ THEN _NOBW2 SuFinchQuestNWMan1
@869 DO ~SetGlobal("SUFinchNobWQuest1", "LOCALS",1)~
== SUFINCHJ @870
END
++ @871 EXTERN _NOBW2 SuFinchNobWCharmer
++ @872 EXTERN _NOBW2 SuFinchNobWGettingMiffy2
++ @873 EXTERN _NOBW2 SuFinchNobWPlacated2
++ @874 EXTERN _NOBW2 SuFinchNobWMyHome
++ @875 EXTERN _NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Gender(Player1, Female)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest1", "LOCALS",0)~ THEN _NOBW2 SuFinchQuestNWWoman1
@876 DO ~SetGlobal("SUFinchNobWQuest1", "LOCALS",1)~
== SUFINCHJ @877
END
++ @878 EXTERN _NOBW2 SuFinchNobWPlacated2
++ @879 EXTERN _NOBW2 SuFinchNobWGettingMiffy2
++ @873 EXTERN _NOBW2 SuFinchNobWPlacated2
++ @874 EXTERN _NOBW2 SuFinchNobWMyHome
++ @875 EXTERN _NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchNobWQuest1", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobWQuest2", "LOCALS",0)~ THEN _NOBW2 SuFinchQuestNW2
@880 DO ~SetGlobal("SUFinchNobWQuest2", "LOCALS",1)~
== SUFINCHJ @881
END
++ @882 EXTERN _NOBW2 SuFinchNobWRich
++ @883 EXIT
++ @884 EXTERN _NOBW2 SuFinchNobWNoSoupForYou2
++ @885 EXTERN _NOBW2 SuFinchDirectToTrask3


CHAIN
IF WEIGHT #-1 ~!NumTimesTalkedTo(0) InParty("sufinch")
See("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchMetTrask", "GLOBAL", 0)
Global("SUFinchBerrunQuest", "LOCALS",0)~ THEN _BERRUN SuFinchQuest
@886 DO ~SetGlobal("SUFinchBerrunQuest", "LOCALS",1)~
== SUFINCHJ @887
== _BERRUN @888
=
@889 DO ~AddJournalEntry(@68, QUEST)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobMQuest1", "LOCALS",0)~ THEN _NOBL2 SuFinchQuestNM1
@890 DO ~SetGlobal("SUFinchNobMQuest1", "LOCALS",1)~
=
@891
== SUFINCHJ @892
END
++ @893 EXTERN _NOBL2 SuFinchNobMPlacated
++ @894 EXTERN _NOBL2 SuFinchNobMGettingMiffy
++ @895 EXTERN _NOBL2 SuFinchNobMJealous
++ @896 EXTERN _NOBL2 SuFinchNobMGettingMiffy
++ @897  EXTERN _NOBL2 SuFinchDirectToTrask


CHAIN
IF WEIGHT #-1 ~InParty("sufinch")
!StateCheck("sufinch", STATE_SLEEPING)
Global("SUFinchNobMQuest1", "LOCALS",1)
Global("SUFinchQuestFailed", "GLOBAL",0)
!Global("SUFinchStartedLibrary", "GLOBAL",1)
Global("SUFinchNobMQuest2", "LOCALS",0)~ THEN _NOBL2 SuFinchQuestNM2
@898 DO ~SetGlobal("SUFinchNobMQuest2", "LOCALS",1)~
== SUFINCHJ @899
END
++ @900 EXTERN _NOBL2 SuFinchNobMPlacated2
++ @901 EXIT
++ @884 EXTERN _NOBL2 SuFinchNobMNoSoupForYou1
++ @885  EXTERN _NOBL2 SuFinchDirectToTrask2


CHAIN
IF ~~ THEN _NOBL2 SuFinchNobMGettingMiffy
@902
== SUFINCHJ @903
== _NOBL2 @904
EXIT
