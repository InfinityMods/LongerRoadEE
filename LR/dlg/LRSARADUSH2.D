 /////////////////////////////////////////////////////////
//                                                      //
//  SARADUSH INTERJCTIONS P2                            //
//////////////////////////////////////////////////////////
ADD_TRANS_TRIGGER SARMAG01 1 ~OR(2)
!InParty("lrirenic")
Global("LRERRARD","AR5000",1)~

ADD_TRANS_TRIGGER SARVAM01 0 ~!InParty("lrirenic")~

EXTEND_BOTTOM SARMAG01 1
IF ~InParty("lrirenic") Global("LRERRARD","AR5000",0)~ THEN
DO ~SetGlobal("LRERRARD","AR5000",1)~
EXTERN JONEL25J JONERR1
END

EXTEND_BOTTOM SARVAM01 0
IF ~InParty("lrirenic") Global("LRPHLYD","AR5006",0)~ THEN
DO ~SetGlobal("LRPHLYD","AR5006",1)~
EXTERN JONEL25J JONPHLYD1
END

APPEND JONEL25J

IF ~~ THEN BEGIN JONERR1
  SAY @0
  IF ~!InParty("Viconia") !InParty("Jaheira")~ THEN EXTERN SARMAG01 ERRJON1
  IF ~!InParty("Viconia") InParty("Jaheira")~ THEN EXTERN JAHEI25J LRJON_ER_JAH1
  IF ~InParty("Viconia")~ THEN EXTERN VICON25J LRJON_ER_VIC1
END

IF ~~ THEN BEGIN LRJON_ER_VIC2
  SAY @1
  IF ~!InParty("Jaheira")~ THEN EXTERN SARMAG01 ERRJON1
  IF ~InParty("Jaheira")~ THEN EXTERN JAHEI25J LRJON_ER_JAH1
END

IF ~~ THEN BEGIN JONPHLYD1
   SAY @2
   IF ~~ THEN REPLY @3 GOTO JONPHLYD2
   IF ~~ THEN REPLY @4 GOTO JONPHLYD2
END

IF ~~ THEN BEGIN JONPHLYD2
  SAY @5
  IF ~~ THEN EXTERN SARVAM01 PHLYDJON1
END
END

APPEND SARVAM01

IF ~~ THEN BEGIN PHLYDJON1
  SAY @6
  IF ~~ THEN REPLY #71588 /* ~I guess I'm just too irresistible for the likes of you.~ */ GOTO 2
  IF ~~ THEN REPLY #71589 /* ~Die, vampire scum!~ */ GOTO 2
  IF ~~ THEN REPLY #71594 /* ~I don't suppose you'd just let me pass by without a fuss?~ */ GOTO 2
END
END

APPEND SARMAG01

IF ~~ THEN BEGIN ERRJON1
    SAY @7
    IF ~Global("CountessJob","GLOBAL",1)~ THEN REPLY #64899 /* ~I have come from the Countess.  I must speak to you about Ardic, her son.~ */ GOTO 4
    IF ~~ THEN REPLY #64900 /* ~I need to speak to you about Ardic's disappearance.~ */ GOTO 3
    IF ~~ THEN REPLY #64901 /* ~I have some bad news, old man.  It's time for you to die!~ */ GOTO 2
    IF ~!Dead("sarkis01")~ THEN REPLY #64905 /* ~Kiser Jhaeri sent me to kill you, but I'm not going to do it.~ */ GOTO 6
END
END

APPEND VICON25J 

IF ~~ THEN BEGIN LRJON_ER_VIC1
  SAY @8
  IF ~~ THEN EXTERN JONEL25J LRJON_ER_VIC2
END
END

CHAIN JAHEI25J LRJON_ER_JAH1
@9
== JONEL25J
@10
== JAHEI25J
@11
EXTERN SARMAG01 ERRJON1
