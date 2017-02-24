/////////////////////////////////////////////////////////
//                                                     //
//  GROMNIR VS JON BANTER WITH PC                      //
/////////////////////////////////////////////////////////

ADD_TRANS_TRIGGER GROMNIR 7 ~!IfValidForPartyDialog("lrirenic")~

EXTEND_BOTTOM GROMNIR 7
IF ~IfValidForPartyDialog("lrirenic") Global("LRGROM","AR5002",0)~ THEN 
DO ~SetGlobal("LRGROM","AR5002",1)~
EXTERN JONEL25J JONGROM1
END

APPEND JONEL25J

IF ~~ THEN BEGIN JONGROM1
   SAY @0 
   IF ~!Race(Player1,HALFORC)~ THEN REPLY @1 GOTO JONGROM2
   IF ~!Race(Player1,HALFORC)~ THEN REPLY @2 GOTO JONGROM2
   IF ~Race(Player1,HALFORC)~ THEN REPLY @1 GOTO JONGROM3
   IF ~Race(Player1,HALFORC)~ THEN REPLY @2 GOTO JONGROM3
END

IF ~~ THEN BEGIN JONGROM2
  SAY @3
  IF ~~ THEN DO ~
ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(64995)
EraseJournalEntry(65001)
EraseJournalEntry(65003)
ActionOverride("gromnir",Enemy())
SetGlobalTimer("reinfg","GLOBAL",10)
CreateCreature("GROMG03",[781.596],4)
CreateCreature("GROMG09",[832.609],4)
CreateCreature("GROMG10",[778.636],4)
EndCutSceneMode()
ActionOverride("gromg03",Shout(ALERT))
ActionOverride("gromg03",Enemy())
ActionOverride("gromg05",Enemy())
ActionOverride("gromg08",Enemy())
ActionOverride("gromg09",Enemy())
ActionOverride("gromg10",Enemy())
~ SOLVED_JOURNAL #65062 /* ~Dealing With Gromnir

I managed to get into the castle, finally, and encountered the mad General.  Whatever chance there might have been for a peaceful resolution was dashed as soon as I met Gromnir...he was obviously as mad as Melissan claimed.  Regardless, he is dead now and his tyranny and his rampaging men will no longer be a problem for Saradush.  There is, of course, still the problem of Yaga-Shura's army around the city...  ~ */ EXIT
END

IF ~~ THEN BEGIN JONGROM3
  SAY @4
  IF ~~ THEN DO ~
ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(64995)
EraseJournalEntry(65001)
EraseJournalEntry(65003)
ActionOverride("gromnir",Enemy())
SetGlobalTimer("reinfg","GLOBAL",10)
CreateCreature("GROMG03",[781.596],4)
CreateCreature("GROMG09",[832.609],4)
CreateCreature("GROMG10",[778.636],4)
EndCutSceneMode()
ActionOverride("gromg03",Shout(ALERT))
ActionOverride("gromg03",Enemy())
ActionOverride("gromg05",Enemy())
ActionOverride("gromg08",Enemy())
ActionOverride("gromg09",Enemy())
ActionOverride("gromg10",Enemy())
~ SOLVED_JOURNAL #65062 /* ~Dealing With Gromnir

I managed to get into the castle, finally, and encountered the mad General.  Whatever chance there might have been for a peaceful resolution was dashed as soon as I met Gromnir...he was obviously as mad as Melissan claimed.  Regardless, he is dead now and his tyranny and his rampaging men will no longer be a problem for Saradush.  There is, of course, still the problem of Yaga-Shura's army around the city...  ~ */ EXIT
END   //END BEFORE GROMNIR IS DEAD BANTER

IF ~Dead("gromnir") Global("LRGROM","AR5002",2)~ THEN BEGIN JONGROM4
  SAY @5  
  IF ~!IfValidForPartyDialog("Imoen2")~ THEN DO ~SetGlobal("LRGROM","AR5002",3) SetGlobal("LRGRDEAD","GLOBAL",1)~ EXIT
  IF ~IfValidForPartyDialog("Imoen2")~ THEN DO ~SetGlobal("LRGROM","AR5002",3) SetGlobal("LRGRDEAD","GLOBAL",1)~ EXTERN IMOEN25J JON_IMMY_GRO1
END // END BANTER AFTER GROMNIR IS DEAD

IF ~~ THEN BEGIN JONGROM5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("LRGROM","AR5002",4)~ EXTERN SARMEL01 51
END

IF ~~ THEN BEGIN JON_MEL_JIBE1
  SAY @7 
  IF ~~ THEN EXTERN SARMEL01 LRSNARL
END
END

APPEND IMOEN25J
IF ~~ THEN BEGIN JON_IMMY_GRO1
  SAY @8
  IF ~~ THEN EXIT 
END
END

ADD_TRANS_TRIGGER SARMEL01 50 ~!IfValidForPartyDialog("lrirenic")~
ADD_TRANS_TRIGGER SARMEL01 56 ~!IfValidForPartyDialog("lrirenic")~

APPEND SARMEL01
IF ~~ THEN BEGIN LRSNARL
  SAY @9
  IF ~~ THEN GOTO 57
END
END

REPLACE_SAY SARMEL01 57 @10

REPLACE_STATE_TRIGGER SARMEL01 34
~OR(2)
!IfValidForPartyDialog("lrirenic")
Global("LRGRDEAD","GLOBAL",1)   // new triggers here
Dead("gromnir")
Global("Mel01GromnirDeath","GLOBAL",0)~

EXTEND_BOTTOM SARMEL01 50
IF ~IfValidForPartyDialog("lrirenic")~
THEN UNSOLVED_JOURNAL #65769 /* ~Defeating Yaga-Shura */
EXTERN JONEL25J JONGROM5
END

EXTEND_BOTTOM SARMEL01 56
IF ~IfValidForPartyDialog("lrirenic")~
THEN EXTERN JONEL25J JON_MEL_JIBE1
END

INTERJECT_COPY_TRANS SARMEL01 68 JONILLA
== JONEL25J IF ~IfValidForPartyDialog("lrirenic")~ THEN
@11 
END

