BEGIN ~SUFINCH~

IF ~NumTimesTalkedTo(0) 
!Global("SUPCKnowsFinch", "GLOBAL", 0)
Global("SUSoWeMeetAgain", "GLOBAL", 0)
Global("SUFinchKarl", "GLOBAL", 1)
Global("SURedSheafMeet", "GLOBAL", 0)~ THEN BEGIN SURedSheafMeeting1
SAY @70 
+ ~!InParty("%er_imoen%")~ + @71 GOTO SuFinchQuicklyForget
+ ~InParty("%er_imoen%")~ + @71 EXTERN %er_bimoen% SuImoenQuicklyForget
++ @72 GOTO SuFinchHowTerrible
++ @73 GOTO SuFinchMoreUseful
++ @74 GOTO SuFinchGotMyBook
++ @75 GOTO SuFinchSuchPride
++ @76 DO ~SetGlobal("SUPCRudeToFinch", "LOCALS", 1)~ GOTO SuFinchTeaAlone
END

IF ~NumTimesTalkedTo(0) 
Global("SUPCKnowsFinch", "GLOBAL", 0)
Global("SUSoWeMeetAgain", "GLOBAL", 0)
Global("SUFinchKarl", "GLOBAL", 1)
Global("SURedSheafMeet", "GLOBAL", 0)~ THEN BEGIN SURedSheafMeeting2
SAY @77 
++ @78 GOTO SuFinchModest
++ @79 GOTO SuFinchMoreUseful2
++ @80 DO ~SetGlobal("SUPCRudeToFinch", "LOCALS", 1)~ GOTO SuFinchTeaAlone
IF ~Or(4) Race(Player1, HUMAN) Race(Player1, ELF) Race(Player1, HALFORC) Race(Player1, HALF_ELF)~ THEN REPLY @81 GOTO SuFinchGnomeJoke2
++ @82 GOTO SuFinchSuchPride2
++ @83 GOTO SuFinchIntro2
END

IF ~NumTimesTalkedTo(0) 
!Global("SUPCKnowsFinch", "GLOBAL", 0)
Global("SUSoWeMeetAgain", "GLOBAL", 0)
Global("SUFinchKarl", "GLOBAL", 0)
Global("SURedSheafMeet", "GLOBAL", 0)~ THEN BEGIN SURedSheafMeeting3
SAY @84 
+ ~!InParty("%er_imoen%")~ + @71 GOTO SuFinchQuicklyForget
+ ~InParty("%er_imoen%")~ + @71 EXTERN %er_bimoen% SuImoenQuicklyForget
++ @85 GOTO SuFinchWhatAssassin
++ @86 GOTO SuFinchMoreUseful3
++ @74 GOTO SuFinchGotMyBook
++ @76 DO ~SetGlobal("SUPCRudeToFinch", "LOCALS", 1)~ GOTO SuFinchTeaAlone
END

IF ~NumTimesTalkedTo(0) 
Global("SUPCKnowsFinch", "GLOBAL", 0)
Global("SUSoWeMeetAgain", "GLOBAL", 0)
Global("SUFinchKarl", "GLOBAL", 0)
Global("SURedSheafMeet", "GLOBAL", 0)~ THEN BEGIN SURedSheafMeeting4
SAY @87 
++ @88 GOTO SuFinchWhatAssassinStranger
++ @89 GOTO SuFinchMoreUseful4
++ @90 DO ~SetGlobal("SUPCRudeToFinch", "LOCALS", 1)~ GOTO SuFinchTeaAlone
+ ~Or(4) Race([PC], HUMAN) Race([PC], ELF) Race([PC], HALFORC) Race([PC], HALF_ELF)~ + @91 GOTO SuFinchGnomeJoke2
++ @92 GOTO SuFinchIntro2
END

IF ~!NumTimesTalkedTo(0) 
Global("SUPCRudeToFinch", "LOCALS", 1)
Global("SURedSheafMeet", "GLOBAL", 1)~ THEN BEGIN SUSecondRedSheafMeeting
SAY @93 
++ @94 GOTO SuFinchTeaAlone
++ @95  GOTO SuFinchTeaAlone
+ ~Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @96 GOTO SuFinchIntro2
+ ~!Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @97 GOTO SuFinchAcceptA
END

IF ~!NumTimesTalkedTo(0) 
Global("SUPCRudeToFinch", "LOCALS", 0)
Global("SURedSheafMeet", "GLOBAL", 1)~ THEN BEGIN SUSecondRedSheafMeeting2
SAY @98 
++ @99 GOTO SuFinchFarewell2
++ @100 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchFarewell2
SAY @101
=
@102
IF ~~ THEN DO ~ SetGlobal("SURedSheafMeet", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchQuicklyForget
SAY @103
=
@104
=
@105
=
@106
=
@107
++ @99 GOTO SuFinchFarewell
++ @108 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchHowTerrible
SAY @109
=
@110
=
@111
=
@112
++ @99 GOTO SuFinchFarewell
++ @113 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchMoreUseful
SAY @114
IF ~~ THEN GOTO SuFinchPitchWLibrary
END

IF ~~ THEN BEGIN SuFinchPitchWLibrary
SAY @115
=
@111
=
@112
++ @99 GOTO SuFinchFarewell
++ @108 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchGotMyBook
SAY @116
=
@117
=
@112
++ @99 GOTO SuFinchFarewell
++ @108 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchSuchPride
SAY @118
=
@117
=
@112
++ @99 GOTO SuFinchFarewell
++ @119 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchTeaAlone
SAY @120
IF ~~ THEN DO ~ SetGlobal("SURedSheafMeet", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchModest
SAY @121
=
@122
++ @123 GOTO SuFinchWonder
++ @124 GOTO SuFinchShocking
++ @125 GOTO SuFinchWhatAShame
END

IF ~~ THEN BEGIN SuFinchWonder
SAY @126
IF ~~ THEN GOTO SuFinchPitch
END

IF ~~ THEN BEGIN SuFinchShocking
SAY @127
IF ~~ THEN GOTO SuFinchPitch
END

IF ~~ THEN BEGIN SuFinchWhatAShame
SAY @128
IF ~~ THEN GOTO SuFinchWonder
END

IF ~~ THEN BEGIN SuFinchPitch
SAY @129
=
@107
++ @99 GOTO SuFinchFarewell
++ @130 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchMoreUseful2
SAY @114
=
@122
++ @123 GOTO SuFinchWonder
++ @124 GOTO SuFinchShocking
++ @125 GOTO SuFinchWhatAShame
END

IF ~~ THEN BEGIN SuFinchGnomeJoke2
SAY @131
+ ~Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @132 GOTO SuFinchIntro2
+ ~!Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @133 GOTO SuFinchPitchWLibrary
+ ~!Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @134 GOTO SuFinchNotAtAll
+ ~Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @134 GOTO SuFinchNotAtAll2
+ ~!Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @135 GOTO SuFinchCharming2
+ ~Global("SUPCKnowsFinch", "GLOBAL", 0)~ + @136 GOTO SuFinchCharming3
END

IF ~~ THEN BEGIN SuFinchSuchPride2
SAY @137
=
@122
++ @123 GOTO SuFinchWonder
++ @124 GOTO SuFinchShocking
++ @125 GOTO SuFinchWhatAShame
END

IF ~~ THEN BEGIN SuFinchIntro2
SAY @138
++ @123 GOTO SuFinchWonder
++ @124 GOTO SuFinchShocking
++ @125 GOTO SuFinchWhatAShame
END

IF ~~ THEN BEGIN SuFinchCharming2
SAY @139
IF ~~ THEN GOTO SuFinchPitchWLibrary
END

IF ~~ THEN BEGIN SuFinchCharming3
SAY @140
IF ~~ THEN GOTO SuFinchIntro2
END

IF ~~ THEN BEGIN SuFinchNotAtAll
SAY @141
=
@142
=
@117
=
@112
++ @99 GOTO SuFinchFarewell
++ @119 GOTO SuFinchJoin
END

IF ~~ THEN BEGIN SuFinchNotAtAll2
SAY @143
=
@144
++ @123 GOTO SuFinchWonder
++ @124 GOTO SuFinchShocking
++ @125 GOTO SuFinchWhatAShame
END

IF ~~ THEN BEGIN SuFinchWhatAssassin
SAY @145
=
@146
IF ~~ THEN GOTO SuFinchPitchWLibrary
END

IF ~~ THEN BEGIN SuFinchMoreUseful3
SAY @147
IF ~~ THEN GOTO SuFinchPitchWLibrary
END

IF ~~ THEN BEGIN SuFinchWhatAssassinStranger
SAY @148
=
@149
IF ~~ THEN GOTO SuFinchIntro2
END

IF ~~ THEN BEGIN SuFinchMoreUseful4
SAY @150
=
@151
=
@152
IF ~~ THEN GOTO SuFinchIntro2
END

IF ~~ THEN BEGIN SuFinchFarewell
SAY @153
=
@154
IF ~~ THEN DO ~ SetGlobal("SURedSheafMeet", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN SuFinchJoin
SAY @155 
IF ~~ THEN DO ~SetGlobal("SUFinchJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN SuFinchAcceptA
SAY @156
IF ~~ THEN GOTO SuFinchPitchWLibrary
END

BEGIN ~SUFINCHP~

IF ~Global("SUFinchJoined","LOCALS",1)~ THEN BEGIN SuFinchKickOut
  SAY @157 
  ++ @158 GOTO SuFinchAlrightThen
  ++ @159 DO ~SetGlobal("SUFinchJoined","LOCALS",0)~ GOTO SuFinchSecondThoughts
END

IF ~~ THEN BEGIN SuFinchAlrightThen
SAY @160
IF ~~ THEN DO ~JoinParty()~  EXIT
END

IF ~~ THEN BEGIN SuFinchSecondThoughts
SAY @161
IF ~~ THEN EXIT
END

IF ~Global("SUFinchJoined","LOCALS",0)~ THEN BEGIN SuFinchRejoin
  SAY @162 
  ++ @163 GOTO SuFinchGoody
  ++ @164 GOTO SuFinchTease
END

IF ~~ THEN BEGIN SuFinchGoody
SAY @165
IF ~~ THEN DO ~SetGlobal("SUFinchJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN SuFinchTease
SAY @166
IF ~~ THEN EXIT
END

APPEND %er_bimoen%

IF ~~ THEN BEGIN SuImoenQuicklyForget
SAY @167
=
@168
++ @169 EXTERN SUFINCH SuFinchFarewell
++ @170 EXTERN SUFINCH SuFinchGotMyBook
END

END