APPEND "sufinchj"

IF ~~
BEGIN blackhearts_exorcism
  SAY @1151
  IF ~~
    REPLY @1152
    EXTERN "wipresfi" 4
  IF ~~
    REPLY @1153
    EXTERN "wipresfi" 2
END

END	// APPEND


EXTEND_TOP "wipresfi" 0 6 #1
  IF ~InParty("sufinch") InMyArea("sufinch") !StateCheck("sufinch", CD_STATE_NOTVALID)~
    REPLY @1154
    EXTERN "sufinchj" blackhearts_exorcism
END


