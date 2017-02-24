//LR_JAHEIRA_ROMANCE

ADD_TRANS_TRIGGER BJAHEI25 29
~!InPartyAllowDead("lrirenic")
Global("JonBanished","GLOBAL",1)~

ADD_TRANS_TRIGGER BJAHEI25 46
~OR(2)
Global("JonUndecided","GLOBAL",3)
!InPartyAllowDead("lrirenic")~

ADD_TRANS_TRIGGER BJAHEI25 67
~!InPartyAllowDead("lrirenic")
Global("JonBanished","GLOBAL",1)~

EXTEND_BOTTOM BJAHEI25 29
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69583 /* ~Really? I have had the feeling of running in circles.~ */ GOTO LR_NOT_DEAD
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69584 /* ~I'm just happy to have weathered it all with you still at my side.~ */ GOTO LR_TRUST
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69585 /* ~Jaheira, I'm sorry, but I can't talk right now. ~ */ GOTO LR_TOSAY
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69586 /* ~Give it a rest. My life continues to be a monumental chore.~ */ GOTO LR_HONEST
END

EXTEND_BOTTOM BJAHEI25 46
IF ~InPartyAllowDead("lrirenic")
!Global("JonUndecided","GLOBAL",3)~ THEN GOTO LR_PLIGHT
END

EXTEND_BOTTOM BJAHEI25 67
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69758 /* ~It was beautiful, I'll give it that. A pity it suffered like it did.~ */ GOTO LR_BLAME
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69760 /* ~Am I truly welcome there? I think they blamed me a little, just as they will in Saradush.~ */ GOTO LR_TAINT2
IF ~OR(2)
InPartyAllowDead("lrirenic")
!Global("JonBanished","GLOBAL",1)~ THEN REPLY #69761 /* ~Why, so they can stare with their untrusting eyes? I felt that from them.~ */ GOTO LR_TAINT2
END

APPEND BJAHEI25

//LOVETALK 1 ADDITIONS
IF ~~ THEN BEGIN LR_NOT_DEAD  //0
  SAY @0
  IF ~~ THEN GOTO LR_INSIGHT
END

IF ~~ THEN BEGIN LR_INSIGHT   //1
  SAY @1
   IF ~~ THEN GOTO LR_WISH
END

IF ~~ THEN BEGIN LR_TRUST       //2
  SAY @2
  IF ~~ THEN GOTO LR_INSIGHT
END

IF ~~ THEN BEGIN LR_WISH    //3
  SAY @3
  IF ~~ THEN REPLY #69596 /* ~Jaheira, I need you here. You keep me grounded.~ */ GOTO LR_HOPED
  IF ~~ THEN REPLY #69598 /* ~What I want changes daily. Everything is a bit crazy right now.~ */ GOTO LR_TOSAY
END

IF ~~ THEN BEGIN LR_TOSAY    //4
  SAY #69599 /* ~I know, there is always something to take our attention. I will leave you to it, but I just wanted to say... to say that...~ */
  IF ~~ THEN GOTO LR_FAITH
END

IF ~~ THEN BEGIN LR_FAITH      //5
  SAY @4
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN LR_HONEST //6
  SAY @5
  IF ~~ THEN GOTO LR_INSIGHT
END

IF ~~ THEN BEGIN LR_HOPED //8
  SAY #69609 /* ~I had hoped as much. You are very important to me, <CHARNAME>. I could not imagine us...~ */
  IF ~~ THEN GOTO LR_FAITH
END

//LOVETALK 2 ADDITIONS
IF ~~ THEN BEGIN LR_PLIGHT
 SAY @6
 IF ~~ THEN GOTO LR_GORION
END

IF ~~ THEN BEGIN LR_GORION
 SAY @7
 IF ~Dead("Sarevok")~ THEN GOTO LR_HONOR
 IF ~!Dead("Sarevok")~ THEN GOTO LR_SAREVOK
END

IF ~~ THEN BEGIN LR_SAREVOK
 SAY @8
 IF ~~ THEN GOTO LR_HONOR
END

IF ~~ THEN BEGIN LR_HONOR
 SAY @9
 IF ~~ THEN GOTO LR_PHANTOMS
END

IF ~~ THEN BEGIN LR_PHANTOMS
 SAY @10
 IF ~~ THEN EXIT
END

//LOVETALK 3 ADDITIONS
IF ~~ THEN BEGIN LR_BLAME
 SAY @11
 IF ~~ THEN GOTO LR_TAINT1
END

IF ~~ THEN BEGIN LR_TAINT1
 SAY @12
 IF ~~ THEN REPLY @13 GOTO LR_WHAT
 IF ~~ THEN REPLY @14 GOTO LR_WHAT
END

IF ~~ THEN BEGIN LR_TAINT2
 SAY @15
 IF ~~ THEN REPLY @13 GOTO LR_WHAT
 IF ~~ THEN REPLY @14 GOTO LR_WHAT
END

IF ~~ THEN BEGIN LR_WHAT
  SAY @16
  IF ~~ THEN REPLY @17 GOTO LR_TOOL
  IF ~~ THEN REPLY @18 GOTO LR_EVIL
  IF ~~ THEN REPLY @19 GOTO LR_TOOL
END

IF ~~ THEN BEGIN LR_TOOL
  SAY @20
  IF ~~ THEN REPLY #69766 /* ~Well, that sounded rehearsed. What are you getting at?~ */ GOTO 70
  IF ~~ THEN REPLY #69767 /* ~Please don't disguise your meaning, Jaheira. Voice your concern openly.~ */ GOTO 70
END

IF ~~ THEN BEGIN LR_EVIL
  SAY @21
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT
END
END
