BEGIN ~SUFINCHI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN SUMumble
SAY @700 
= @701 
++ @702 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuAProphecyA
++ @703 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchIntro
++ @704 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchFluster
++ @705 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchBrute
++ @706 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 3)~ GOTO SuFinchRudeNote
++ @707 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 2)~ GOTO SuAProphecyB
END

IF ~~ THEN BEGIN SuAProphecyA
SAY @708
=
@709
++ @710 GOTO SuFinchStudied
++ @711 GOTO SuFinchIntro
++ @712 GOTO SuFinchStudied2
++ @713 GOTO SuFinchPastFuture
++ @714 GOTO SuFinchNotReally
+ ~Or(4) Race([PC], HUMAN) Race([PC], ELF) Race([PC], HALFORC) Race([PC], HALF_ELF)~ + @715 GOTO SuFinchGnomeJoke1
END

IF ~~ THEN BEGIN SuFinchIntro
SAY @716
++ @717 GOTO SuFinchWondrousBooks
++ @718 GOTO SuFinchWondrousBooks
++ @719 GOTO SuFinchWondrousBooks2
++ @720 GOTO SuFinchTravelAsWell
END

IF ~~ THEN BEGIN SuFinchFluster
SAY @721
++ @722 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuAProphecyA
++ @723 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchIntro
++ @724 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchBrute
++ @725 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 3)~ GOTO SuFinchRudeNote
END

IF ~~ THEN BEGIN SuFinchBrute
SAY @726
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchRudeNote
SAY @727
++ @728 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 1)~ GOTO SuFinchBrute
++ @729 DO ~SetGlobal("SUPCKnowsFinch", "GLOBAL", 2)~ GOTO SuAProphecyB
++ @730 GOTO SuFinchEnjoyLife
++ @731 GOTO SuFinchLeavingNow
++ @732 GOTO SuFinchBrute
END

IF ~~ THEN BEGIN SuAProphecyB
SAY @733
=
@709
++ @734 GOTO SuFinchStudied
++ @735 GOTO SuFinchStudied2
++ @736 GOTO SuFinchWisdom
++ @737 GOTO SuFinchPastFuture
++ @738 GOTO SuFinchNotReally
+ ~Or(4) Race([PC], HUMAN) Race([PC], ELF) Race([PC], HALFORC) Race([PC], HALF_ELF)~ + @739 GOTO SuFinchGnomeJoke1
END

IF ~~ THEN BEGIN SuFinchStudied
SAY @740
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchStudied2
SAY @743
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchPastFuture
SAY @744
=
@745
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchNotReally
SAY @746
=
@747
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchGnomeJoke1
SAY @748
++ @749 GOTO SuFinchBadJokerToo
++ @750 GOTO SuFinchDidntMeanTo
++ @751 GOTO SuFinchNeverLie
++ @752 GOTO SuFinchCharming
END

IF ~~ THEN BEGIN SuFinchWondrousBooks
SAY @753
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchWondrousBooks2
SAY @754
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchTravelAsWell
SAY @755
=
@756
=
@757
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchEnjoyLife
SAY @758
=
@756
=
@757
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchLeavingNow
SAY @759
=
@760
=
@761
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchWisdom
SAY @762
++ @741 GOTO SuFinchDeneir
++ @742 GOTO SuFinchMustGo
END

IF ~~ THEN BEGIN SuFinchDeneir
SAY @763
=
@764
=
@765
=
@757
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchMustGo
SAY @766
=
@765
=
@757
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchDidntMeanTo
SAY @767
=
@768
=
@769
=
@770
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchBadJokerToo
SAY @771
=
@768
=
@765
=
@772
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchNeverLie
SAY @763
=
@764
=
@765
=
@772
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SuFinchCharming
SAY @773
=
@765
=
@772
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
