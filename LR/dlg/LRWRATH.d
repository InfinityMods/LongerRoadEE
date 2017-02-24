/////////////////////////LRWRATH

ADD_TRANS_TRIGGER HGWRA01 10 ~!IsValidForPartyDialog("lrirenic")~

EXTEND_TOP HGWRA01 10
IF ~IsValidForPartyDialog("Sarevok")~ THEN GOTO 11
IF ~!IsValidForPartyDialog("Sarevok") IsValidForPartyDialog("lrirenic")~ THEN GOTO LRWRATH_MURDERED1
END

ADD_TRANS_TRIGGER SAREV25J 0 ~!IsValidForPartyDialog("lrirenic")~

EXTEND_TOP SAREV25J 0
IF ~IsValidForPartyDialog("lrirenic")~ THEN EXTERN ~HGWRA01~ LRWRATH_MURDERED1
END

APPEND HGWRA01
IF ~~ THEN BEGIN LRWRATH_MURDERED1
  SAY @0
  IF ~~ THEN EXTERN JONEL25J LRWRATH_MURDERED2
END

IF ~~ THEN BEGIN AFTERJON
  SAY @1
  IF ~~ THEN REPLY #66034 /* ~This is pointless!  I never cared for you and never will, old man!~ */ GOTO 27
  IF ~CheckStatLT(Player1,15,WIS)~ THEN REPLY #66035 /* ~No!  I refuse to believe that Gorion would cause this much pain!~ */ GOTO 27
  IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY #66036 /* ~No!  You are in my head, I can feel it!  This is a lie!!~ */ GOTO 28
  IF ~!CheckStatGT(Player1,14,WIS) InParty("lrirenic")~ THEN REPLY #66036 /* ~No!  You are in my head, I can feel it!  This is a lie!!~ */ GOTO 28
END

END

APPEND JONEL25J
IF ~Global("JonGorion","AR5202",1)~ BEGIN LRWRATH1
  SAY @2 
  IF ~~ THEN DO ~SetGlobal("JonGorion","AR5202",2)~ EXIT
END

IF ~~ THEN BEGIN  LRWRATH_MURDERED2
  SAY @3
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN HGWRA01 12
  IF ~!IsValidForPartyDialog("Imoen2")~ THEN EXTERN HGWRA01 13
END
END

INTERJECT_COPY_TRANS HGWRA01 1 JONWRATH2
== JONEL25J IF ~InParty("lrirenic")~ THEN
@4 
== HGWRA01
@5
END

INTERJECT_COPY_TRANS HGWRA01 9 JONWRATH3
== JONEL25J IF ~InParty("lrirenic") !Global("JonUndecided","GLOBAL",3) !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,6)~ THEN
@6 
=
@7
END

INTERJECT_COPY_TRANS HGWRA01 18 JONWRATH4
== JONEL25J IF ~InParty("lrirenic")~ THEN
@8 
END

INTERJECT_COPY_TRANS HGWRA01 24 JONWRATH5
== JONEL25J IF ~InParty("lrirenic") !Global("JonUndecided","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ THEN
@9 
END

INTERJECT HGWRA01 26 JONWRATH6
== JONEL25J IF ~InParty("lrirenic") !Global("JonUndecided","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ THEN
@10
EXTERN HGWRA01 AFTERJON

INTERJECT_COPY_TRANS JAHEI25J 3 JONKHALID
== JONEL25J IF ~InParty("lrirenic") !Global("JonUndecided","GLOBAL",3) !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,6)~ THEN
@11 
END


