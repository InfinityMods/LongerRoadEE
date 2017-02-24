// dialog LRELLESIME

BEGIN ~LRELLE1~

IF ~Global("ElleAttacked","LOCALS",1)~ THEN BEGIN ATTACKED
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TalkedEllesime","GLOBAL",2)~ EXIT
END

IF ~Global("TalkedEllesime","GLOBAL",0)~ THEN BEGIN LRE0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("TalkedEllesime","GLOBAL",1)~ GOTO LRE1
END

IF ~~ THEN BEGIN LRE1
   SAY @2
   IF ~~ THEN GOTO LRE2
END

IF ~~ THEN BEGIN LRE2
   SAY @3

IF ~Race(Player1,elf)~ THEN REPLY @4 GOTO LRE5A
IF ~!Race(Player1,elf)~ THEN REPLY @4 GOTO LRE5
IF ~~ THEN REPLY @5 GOTO LRE3
IF ~~ THEN REPLY @6 GOTO LRE3
IF ~~ THEN REPLY @7 GOTO LRE4
IF ~~ THEN REPLY @8 GOTO LRE3
IF ~~ THEN REPLY @9 GOTO LRE4
IF ~Race(Player1,elf)~ THEN REPLY @10 GOTO LRE5A
IF ~!Race(Player1,elf)~ THEN REPLY @10 GOTO LRE5

END


IF ~~ THEN BEGIN LRE3
      SAY @11
      IF ~~ GOTO LRE6
END

IF ~~ THEN BEGIN LRE6
      SAY @12
      IF ~Global("IQTEST","GLOBAL",1)~ THEN REPLY @13 GOTO LRE4
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @13 GOTO LRE4
      IF ~~ THEN REPLY @14 JOURNAL
      @15
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE4
      SAY @16
      IF ~Global("IQTEST","GLOBAL",1)~ THEN REPLY @17 GOTO LRE9
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @17 GOTO LRE9
      IF ~~ THEN REPLY @18 JOURNAL
      @15
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
      IF ~~ THEN REPLY @19 GOTO LRE9
      IF ~~ THEN REPLY @20 GOTO LRE8
END

IF ~~ THEN BEGIN LRE5A
      SAY @21
      IF ~~ THEN GOTO LRE7
      END


IF ~~ THEN BEGIN LRE5
      SAY @22
      IF ~~ THEN GOTO LRE7
      END

IF ~~ THEN BEGIN LRE7
      SAY @23
      IF ~~ THEN REPLY @24 GOTO LRE8
      IF ~Global("IQTEST","GLOBAL",1)~ THEN REPLY @25 GOTO LRE9
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @25 GOTO LRE9
      IF ~~ THEN REPLY @26 GOTO LRE8A
END

IF ~~ THEN BEGIN LRE8
      SAY @27
      IF ~~ THEN JOURNAL
      @15
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE8A
      SAY @28
      IF ~~ THEN JOURNAL
      @29
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE9
      SAY @30
      IF ~~ THEN DO ~SetGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE10
END

IF ~~ THEN BEGIN LRE10
      SAY @31
      IF ~~ THEN REPLY @32 GOTO LRE11
      IF ~~ THEN REPLY @33 GOTO LRE11
      IF ~~ THEN REPLY @34 GOTO LRE11
END

IF ~~ THEN BEGIN LRE11
      SAY @35
      IF ~~ THEN GOTO LRE12
END

IF ~~ THEN BEGIN LRE12
      SAY @36
      IF ~~ THEN GOTO LRE13
END

IF ~~ THEN BEGIN LRE13
      SAY @37
      IF ~~ THEN GOTO LRE14
END

IF ~~ THEN BEGIN LRE14
      SAY @38
      IF ~~ THEN REPLY @39 GOTO LRE15
      IF ~~ THEN REPLY @40 GOTO LRE15
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @41 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE15 // GOOD +
END

IF ~~ THEN BEGIN LRE15
      SAY @42
      IF ~~ THEN REPLY @43 GOTO LRE16
      IF ~~ THEN REPLY @44 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE17 // GOOD +
      IF ~~ THEN REPLY @45 GOTO LRE17A
END

IF ~~ THEN BEGIN LRE16
      SAY @46
      IF ~~ THEN GOTO LRE18
END

IF ~~ THEN BEGIN LRE18
      SAY @47
      IF ~~ THEN JOURNAL
      @48
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE17
      SAY @49
      IF ~~ THEN GOTO LRE19
END

IF ~~ THEN BEGIN LRE17A
      SAY @50
      IF ~~ THEN GOTO LRE19
END

IF ~~ THEN BEGIN LRE19
      SAY @51
      IF ~~ THEN REPLY @52 GOTO SORT
END

IF ~~ THEN BEGIN SORT
       SAY @53
       IF ~Race(Player1,elf)~ THEN GOTO LRE20
       IF ~!Race(Player1,elf)~ THEN GOTO LRE21
END

IF ~~ THEN BEGIN LRE20
      SAY @54
      IF ~~ THEN GOTO LRE22
END

IF ~~ THEN BEGIN LRE21
      SAY @55
      IF ~~ THEN GOTO LRE22
END

IF ~~ THEN BEGIN LRE22
      SAY @56
      IF ~Global("IQTEST","GLOBAL",1)~ THEN REPLY @57 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE23 // good +
      IF ~Global("IQTEST","GLOBAL",1)~ THEN REPLY @58 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1)~ GOTO LRE23 // evil +
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @57 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE23 // good +
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @58 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1)~ GOTO LRE23 // evil +
      IF ~~ THEN REPLY @59 GOTO LRE23
END


IF ~~ THEN BEGIN LRE23
      SAY @60
      IF ~~ THEN GOTO LRE24
END

IF ~~ THEN BEGIN LRE24
      SAY @61
      IF ~~ THEN GOTO LRE25
END

IF ~~ THEN BEGIN LRE25
      SAY @62
      IF ~~ THEN REPLY @63 GOTO LRE26B
      IF ~~ THEN REPLY @64 GOTO LRE26A
      IF ~~ THEN REPLY @65 GOTO LRE26B
END

IF ~~ THEN BEGIN LRE26A
      SAY @66
      IF ~~ THEN REPLY @67 GOTO LRE26B
      IF ~~ THEN REPLY @68 GOTO LRE26B
END

IF ~~ THEN BEGIN LRE26B
      SAY @69
      IF ~~ THEN GOTO LRE27
END

IF ~~ THEN BEGIN LRE27
      SAY @70
      IF ~~ THEN REPLY @71 GOTO LRE29A
      IF ~~ THEN REPLY @72 GOTO LRE28
      IF ~~ THEN REPLY @73 GOTO LRE29
      IF ~~ THEN REPLY @74 GOTO LRE28
      IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @75 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE29 //good +
END

IF ~~ THEN BEGIN LRE28
      SAY @76
      IF ~~ THEN JOURNAL
      @48
	 DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE29A
      SAY @77
      IF ~~ THEN REPLY @78 GOTO LRE31
      IF ~~ THEN REPLY @79 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRE29
      IF ~~ THEN REPLY @80 GOTO LRE31
END


IF ~~ THEN BEGIN LRE29
      SAY @81
      IF ~~ THEN GOTO LRE30
 END
 
IF ~~ THEN BEGIN LRE30
      SAY @82
      IF ~~ THEN REPLY @83 GOTO LRE32
      IF ~~ THEN REPLY @84 GOTO LRE31
      IF ~~ THEN REPLY @85 GOTO LRE31
      IF ~~ THEN REPLY @86 GOTO LRE32
      IF ~~ THEN REPLY @87 GOTO LRE32
      IF ~~ THEN REPLY @88 GOTO LRE31
END

IF ~~ THEN BEGIN LRE31
      SAY @89
      IF ~~ THEN JOURNAL
      @90 
	DO ~SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN LRE32
      SAY @91
      IF ~~ THEN GOTO LRE33
END

IF ~~ THEN BEGIN LRE33
      SAY @92
      IF ~~ THEN GOTO LRE34
END

IF ~~ THEN BEGIN LRE34
      SAY @93
      IF ~~ THEN JOURNAL
      @94
        DO ~GiveItemCreate("imask",Player1,0,0,0) SetGlobal("ReceivedMask","GLOBAL",1) SetGlobal("TalkedEllesime","GLOBAL",2)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
