//LRYAGACON

EXTEND_BOTTOM YAGCON 0
IF ~InParty("lrirenic") Global("JonSilly","AR5204",0)~ THEN
EXTERN JONEL25J LRYAGCON1
END

APPEND JONEL25J

IF ~~ THEN BEGIN LRYAGCON1
  SAY @0  
  IF ~~ THEN REPLY @1 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1) SetGlobal("JonSilly","AR5204",1)~ EXTERN YAGCON LRWORM
  IF ~~ THEN REPLY @2 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1) SetGlobal("JonSilly","AR5204",1)~ EXTERN YAGCON LRWORM
END
END

APPEND YAGCON
IF ~~ THEN BEGIN LRWORM
  SAY @3
  IF ~~ THEN REPLY #65923 /* ~Who are you?~ */ GOTO 3
  IF ~~ THEN REPLY #65924 /* ~Why are you chained up in this place?~ */ GOTO 2
  IF ~~ THEN REPLY #65925 /* ~Hold on just a minute.  I'm not about to fall for another trap.~ */ GOTO 1
  IF ~~ THEN REPLY #65927 /* ~What's in it for me if I set you free?~ */ GOTO 5
  IF ~~ THEN REPLY #65933 /* ~Yes, of course.  I shall release you at once.~ */ GOTO 7
END
END

