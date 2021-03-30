

CHAIN
IF ~CombatCounter(0) 
InParty("A#MURN")
See("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
Global("FinchMurn1","GLOBAL",0)~ THEN BSUFINCH BlindAsASlime
@960  DO ~SetGlobal("FinchMurn1","GLOBAL",1)~
== BA#MURN @961 
== BSUFINCH @962
== BA#MURN @963
=
@964
== BSUFINCH @965
== BA#MURN @966
EXIT

CHAIN
IF ~CombatCounter(0) 
InParty("A#MURN")
See("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
InParty("%er_imoen%")
See("%er_imoen%")
!StateCheck("%er_imoen%",CD_STATE_NOTVALID)
Global("FinchMurn2","LOCALS",0)~ THEN BSUFINCH ScribblySort
@967 DO ~SetGlobal("FinchMurn2","LOCALS",1)~
== %er_bimoen% @968 
== BSUFINCH @969
== %er_bimoen% @970
== BSUFINCH @971
== %er_bimoen% @972
=
@973
=
@974
== BSUFINCH @975
== BA#MURN @976
== BSUFINCH @977
EXIT

// Remember check for Yeslick banter where Finch gets some gumption.
CHAIN
IF ~CombatCounter(0)
InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
!Global("SUFinchYeslick2","GLOBAL",1)
Global("FinchMurn3","LOCALS",0)~ THEN BA#MURN StinkyFear
@978  DO ~SetGlobal("FinchMurn3","LOCALS",1)~
== BSUFINCH @979 
== BA#MURN @980
== BSUFINCH @981
== BA#MURN @982
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",CD_STATE_NOTVALID)
Global("FinchMurn4","GLOBAL",0)~ THEN BA#MURN RU1337Slime
@983  DO ~SetGlobal("FinchMurn4","GLOBAL",1)~
== BSUFINCH @984 
== BA#MURN @985
== BSUFINCH @986
== BA#MURN @987
== BSUFINCH @988
== BA#MURN @989
== BSUFINCH @990
== BA#MURN @991
EXIT

CHAIN
IF ~CombatCounter(0) 
InParty("A#MURN")
See("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
Global("FinchMurn1","GLOBAL",1)
Global("FinchMurn4","GLOBAL",1)
Global("FinchMurn5","GLOBAL",0)~ THEN BSUFINCH BaneFinchOrMurn
@992  DO ~SetGlobal("FinchMurn5","GLOBAL",1)~
=
@993
=
@994
== BA#MURN @995
END
++ @996 EXTERN BSUFINCH Choice
++ @997 EXTERN BSUFINCH Overwrought
++ @998 EXTERN BA#MURN Overstayed
++ @999 EXTERN BA#MURN Leave
++ @1000 EXTERN BSUFINCH Well


APPEND BSUFINCH

IF ~~ THEN Well
SAY @1001
IF ~~ THEN EXTERN BA#MURN Slurp
END

IF ~~ THEN GoodRiddance
SAY  @1002 
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Choice
SAY @1003 
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Overwrought
SAY @1004
=
@1005 
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

END

APPEND BA#MURN

IF ~~ THEN BEGIN Overstayed
SAY @1006 
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Leave
SAY @1007 
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Slurp
SAY @1008
IF ~~ THEN EXTERN BSUFINCH GoodRiddance
END

END

