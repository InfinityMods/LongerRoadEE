BEGIN ~LRAHURT~

IF ~Global("AbaiaHurt","GLOBAL",1)~ THEN BEGIN LRABH1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AbaiaHurt","GLOBAL",2)~ EXIT
END

IF ~Global("AbaiaHurt","GLOBAL",4)~ THEN BEGIN LRABH2
  SAY @1
  IF ~~ THEN DO ~SetGlobal("AbaiaHurt","GLOBAL",0) SetDialogue("lrabaia")~ EXIT
END
