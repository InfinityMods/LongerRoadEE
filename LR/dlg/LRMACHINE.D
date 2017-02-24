//These are used to trigger Jon's comment after the discussion with Carsson
REPLACE_ACTION_TEXT GORCAR ~StartCutScene("cut209a")~
                           ~StartCutScene("cut209a") SetGlobal("lrJonGorLumAdv","GLOBAL",1)~
REPLACE_ACTION_TEXT GORCAR ~ReallyForceSpell(LastTalkedToBy,TRAP_LIGHTNING_ORB3)~
                           ~ReallyForceSpell(LastTalkedToBy,TRAP_LIGHTNING_ORB3) SetGlobal("lrJonGorLumAdv","GLOBAL",1)~

EXTEND_BOTTOM GORCAR 13
IF ~~ DO ~SetGlobal("lrJonGorLumAdv","GLOBAL",1)~ EXIT
END

//The Machine of Lum the Mad:

EXTEND_BOTTOM GORLUM2 0
IF ~Name("lrirenic",LastTalkedToBy())~ EXTERN JONEL25J MadMachineA
END

INTERJECT GORLUM2 0 lrIreGorMach
 == GORLUM2 IF ~Name("lrirenic",LastTalkedToBy())~ THEN
  @0
 =
  @1
 == JONEL25J
  @2 
 == GORLUM2
  @3
 =
  @4
  DO ~ReallyForceSpell("lrirenic",GAIN_ONE_CHA_PERMANENT)~
 == JONEL25J
  @5
END IF ~~ DO ~ActionOverride("Gorlum",DestroySelf())~ EXIT

APPEND JONEL25J
IF ~G("lrJonGorLumAdv",2) Global("lrJonCarstTlk","AR3017",1)~ GorJonAdv1
  SAY @6 
  ++ @7 DO ~SG("lrJonGorLumAdv",3)~ + GorJonAdv2
  ++ @8 DO ~SG("lrJonGorLumAdv",3)~ + GorJonAdv2
END

IF ~~ GorJonAdv2
  SAY @9
  IF ~~ EXIT
END

IF ~~ MadMachineA
  SAY @10
  + ~Global("StairButton","GLOBAL",0)~ + @11 + MachineOpen
  ++ @12 DO ~ActionOverride("gorlum",DestroySelf())~ EXIT
  + ~Global("StairButton","GLOBAL",0)~ + @13 + MachineOpen
  ++ @14 + MachineExplain
END

IF ~~ MachineExplain
SAY @15 
IF ~~ DO ~ActionOverride("gorlum",DestroySelf())~ EXIT
END
END

CHAIN
IF ~~ THEN JONEL25J MachineOpen
@16
== GORLUM2 #73749
END GORLUM2 15

//Lord of the Level:
INTERJECT_COPY_TRANS Gorcar 2 lrGorcar1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @17 
   == IMOEN25J IF ~InParty("Imoen2")~ THEN
    @18 
   == JONEL25J IF ~InParty("Imoen2")~ THEN
    @19 
   == IMOEN25J IF ~InParty("Imoen2")~ THEN
    @20 
   == JONEL25J IF ~InParty("Imoen2")~ THEN
    @21 
 == JONEL25J
  @22
 == GORCAR
  @23
END

INTERJECT_COPY_TRANS Gorcar 4 lrGorcar2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @24
 == GORCAR
  @25
 =
  @26
END

INTERJECT_COPY_TRANS Gorcar 7 lrGorcar3
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @27 
   == IMOEN25J IF ~InParty("Imoen2")~ THEN
    @28 
   =
    @29
   == JONEL25J IF ~InParty("Imoen2")~ THEN
    @30
 == JONEL25J
  @31
 == GORCAR
  @32
END

INTERJECT_COPY_TRANS Gorcar 15 lrGorcar4
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @33
END

//Saladex the Dragon
INTERJECT_COPY_TRANS Gorsal 0 lrGorsal1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @34 
   == IMOEN25J IF ~InParty("Imoen2")~ THEN
    @35 
   =
    @36
   == JONEL25J IF ~InParty("Imoen2")~ THEN
    @37
   == IMOEN25J IF ~InParty("Imoen2")~ THEN
    @38
   == JONEL25J IF ~InParty("Imoen2")~ THEN
    @39
 == JONEL25J
  @40
 == GORSAL
  @41
END

//The Apprentice:

INTERJECT_COPY_TRANS Gorapr 10 lrGorapr1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @42
END





