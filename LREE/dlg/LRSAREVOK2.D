//////////////////////////////////////////////////
// SAREVOK ADDITIONS TO BANTERS WITH PC         //
//////////////////////////////////////////////////

ADD_TRANS_TRIGGER BSAREV25 107 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER BSAREV25 108 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER BSAREV25 111 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER BSAREV25 133 ~!InParty("lrirenic")~

EXTEND_BOTTOM BSAREV25 107
IF ~InParty("lrirenic") Global("LRSARRY1","LOCALS",0)~ THEN
DO ~SetGlobal("LRSARRY1","LOCALS",1)~
EXTERN BJONEL25 JONSARRY1
END

EXTEND_BOTTOM BSAREV25 108
IF ~InParty("lrirenic") Global("LRSARRY2","LOCALS",0)~ THEN
DO ~SetGlobal("LRSARRY2","LOCALS",1)~
EXTERN BJONEL25 JONSARRY1
END

EXTEND_BOTTOM BSAREV25 111
IF ~InParty("lrirenic") Global("LRSARRY3","LOCALS",0)~ THEN
DO ~SetGlobal("LRSARRY3","LOCALS",1)~
EXTERN BJONEL25 JONSARRY2
END

EXTEND_BOTTOM BSAREV25 133
IF ~InParty("lrirenic") Global("LRSARRY4","LOCALS",0)~ THEN
DO ~SetGlobal("LRSARRY4","LOCALS",1)~
EXTERN BJONEL25 JONSARRY3
END

APPEND BSAREV25

IF ~~ THEN BEGIN LRLOSER
  SAY @0
  IF ~~ THEN REPLY #69348 /* ~You'll be free to go, as you wish.~ */ GOTO 109
  IF ~~ THEN REPLY #69349 /* ~What do you mean?  Why is it my decision?~ */ GOTO 110
  IF ~~ THEN REPLY #69350 /* ~I couldn't let you leave, knowing you were going to do evil.~ */ GOTO 111
  IF ~~ THEN REPLY #69351 /* ~I intend to kill you again, of course.~ */ GOTO 112
END

IF ~~ THEN BEGIN LREVIL
  SAY @1
  IF ~~ THEN REPLY #69371 /* ~No.  I suppose you're free to make the same mistakes as before.~ */ DO ~IncrementGlobal("SarevokChange","GLOBAL",1)~ GOTO 114
  IF ~~ THEN REPLY #69372 /* ~I assumed that perhaps you had decided to live your life differently.~ */ DO ~IncrementGlobal("SarevokChange","GLOBAL",1)~ GOTO 114
  IF ~~ THEN REPLY #69374 /* ~I assumed that you would know better.  That I would be forced to kill you.~ */ GOTO 113
  IF ~~ THEN REPLY #69375 /* ~True.  I guess I will have to kill you again, after all.~ */ GOTO 112
END

IF ~~ THEN BEGIN LRPOWER
  SAY @2
  IF ~~ THEN REPLY #69473 /* ~You can't take an empire with you when you die.  You should know that.~ */ DO ~IncrementGlobal("SarevokChange","GLOBAL",1)~ GOTO 134
  IF ~~ THEN REPLY #69474 /* ~There is much good that can be done with that power.  That is more important.~ */ DO ~IncrementGlobal("SarevokChange","GLOBAL",1)~ GOTO 134
  IF ~~ THEN REPLY #69475 /* ~I don't know.  But it doesn't have to be used for self-serving, evil purposes.~ */ GOTO 134
  IF ~~ THEN REPLY #69476 /* ~With that power comes great responsibility.~ */ DO ~IncrementGlobal("SarevokChange","GLOBAL",1)~ GOTO 134
  IF ~~ THEN REPLY #69478 /* ~There are better things than power, don't be a fool.~ */ GOTO 135
  IF ~~ THEN REPLY #69479 /* ~I'm not going to discuss this with you.  Begone.~ */ GOTO 131
END
END

CHAIN BJONEL25 JONSARRY1
@3
==BSAREV25
@4
END BSAREV25 LRLOSER

CHAIN BJONEL25 JONSARRY2
@5
==BSAREV25
@6
==BJONEL25
@7
=
@8
==BSAREV25
@9
END BSAREV25 LREVIL

CHAIN BJONEL25 JONSARRY3
@10
==BSAREV25
@11
==BJONEL25
@12
==BSAREV25
@13
END BSAREV25 LRPOWER



