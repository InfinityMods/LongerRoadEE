// dialog LRCCYRIC and additional cyric banter with PC


BEGIN ~LRCYRIC~

IF ~Global("abyss01","AR4500",2) Global("LRCYRIC_CHAT","LOCALS",0)~ THEN BEGIN LRC1
   SAY @0
   IF ~~ THEN DO ~SetGlobal("LRCYRIC_CHAT","LOCALS",1)~ GOTO CYRIC_MEL1
END

BEGIN ~LRBURNIN~
//empty
BEGIN ~LRHOOD~
//empty

CHAIN LRCYRIC CYRIC_MEL1
   @1
== LRHOOD
   @2
== LRCYRIC
   @3
== LRHOOD
   @4
== LRCYRIC
   @5
 =
   @6
 =
  @7
   DO ~ClearAllActions() StartCutSceneMode() StartCutScene("abyss03")~ EXIT
   
APPEND LRHOOD

IF ~Global("LRBURN_TALK","LOCALS",0)~ THEN BEGIN LRH1
   SAY @8
   IF ~~ THEN DO ~SetGlobal("LRBURN_TALK","LOCALS",1)~ EXTERN LRBURNIN MEL_JON1
END
END

CHAIN LRBURNIN MEL_JON1
@9
== LRHOOD
@10
=
@11
DO ~
ClearAllActions() StartCutSceneMode() StartCutScene("abyss04")~
EXIT

BEGIN LRBURN1

IF ~Global("LRBURN_TALK1","LOCALS",0)~ THEN BEGIN LRB1
   SAY @12
   IF ~~ THEN DO ~SetGlobal("LRBURN_TALK1","LOCALS",1)~ EXTERN LRHOOD MEL_JON2
END

CHAIN LRHOOD MEL_JON2
@13
== LRBURN1
@14
== LRHOOD
@15
=
@16
== LRBURN1
@17 
== LRHOOD
@18
== LRBURN1
@19
== LRHOOD
@20
=
@21
== LRBURN1
@22  
== LRHOOD
@23
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("abyss05")~
EXIT

// here begins cyric extra banter with PC in his regular dialog

ADD_TRANS_TRIGGER CHALCY01 11 ~!InParty("lrirenic")~
EXTEND_BOTTOM CHALCY01 11
+ ~InParty("lrirenic")~  + @24 EXTERN CHALCY01 CYCAUGHT1
END

APPEND CHALCY01
IF ~~ CYCAUGHT1
  SAY @25
  ++ @26 + CYCAUGHT2
END

IF ~~ CYCAUGHT2
  SAY @27
     =
      @28
  IF ~~ + 12
END
END


