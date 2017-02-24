//LRDEMOGOR

//Final Seal things:
INTERJECT_COPY_TRANS FSSPIR2 1 lrfinalseal1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @0
END

INTERJECT_COPY_TRANS FSSPIR2 5 lrfinalseal2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @1
END

EXTEND_BOTTOM GORDEMO 13
IF ~OR(2)G("JonUndecided",3)
G("DevaQuestFailed",1)
G("AgreedToGiveSoul",0) InParty("lrirenic")~ DO ~SetGlobal("lrdemoquestion","LOCALS",1)~ EXTERN JONEL25J DemoBetr
END

EXTEND_BOTTOM GORDEMO 35
IF ~OR(2)G("JonUndecided",3)
G("DevaQuestFailed",1)
G("AgreedToGiveSoul",0) InParty("lrirenic")~ DO ~SetGlobal("lrdemoquestion","LOCALS",1)~ EXTERN JONEL25J DemoBetr
END

//Upon reaching the Cell:
CHAIN
IF ~Global("lrjoncellwarn","LOCALS",1)~ THEN JONEL25J CellChain
  @2 
 =
  @3
    DO ~SetGlobal("lrjoncellwarn","LOCALS",2)~
   == ANOME25J IF ~InParty("Anomen")~ THEN
    @4 
EXIT

CHAIN
IF ~~ THEN GORDEMO DemoBetr1
  @5
 == JONEL25J
  @6
 =
  @7
 =
  @8 
END IF ~Global("DemogorgonChange","GLOBAL",0)~ DO ~ActionOverride("demogor1",ReallyForceSpell(Myself,DEMOGORGON_CHANGE))
                                                   SetGlobal("DemogorgonChange","GLOBAL",1) TriggerActivation("DemoGorgonInfo",FALSE) SetGlobal("JonBanished","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
    IF ~Global("DemogorgonChange","GLOBAL",1)~ DO ~SetGlobal("JonBanished","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
    
//Demogorgon stuff:
INTERJECT_COPY_TRANS GORDEMO 1 lrdemogorgon1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @9
END

INTERJECT_COPY_TRANS GORDEMO 28 lrdemogorgon2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @10
END

INTERJECT_COPY_TRANS GORDEMO 12 lrdemogorgon3
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @11 
END

// The Vigil Knight Stuff

INTERJECT_COPY_TRANS GORODR1 46 lrvigil1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @12
END

INTERJECT_COPY_TRANS GORODR1 62 lrvigil1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @12
END

INTERJECT_COPY_TRANS GORODR1 50 lrvigil2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @13
END

INTERJECT_COPY_TRANS GORAPP1 6 lrvigil3
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @14 
END

//The Appends
APPEND JONEL25J
//If Demogorgon is dead or imprisoned
IF ~Global("lrdemodead","LOCALS",1)~ lrdemodead
  SAY @15 
  + ~Global("AgreedToGiveSoul","GLOBAL",0) GGT("JonRedemptionCounter",0) Global("lrdemoquestion","LOCALS",0)~ + @16 + lrdemodead1a
  + ~Global("AgreedToGiveSoul","GLOBAL",0) !GGT("JonRedemptionCounter",0)~ + @16 + lrdemodead2
  + ~!Global("AgreedToGiveSoul","GLOBAL",0) Global("lrdemoquestion","LOCALS",0)~ + @16 + lrdemodead1b
  + ~Global("AgreedToGiveSoul","GLOBAL",0) GGT("JonRedemptionCounter",0)~ + @17 + lrdemodead1a
  + ~Global("AgreedToGiveSoul","GLOBAL",0) !GGT("JonRedemptionCounter",0)~ + @17 + lrdemodead2
  + ~!Global("AgreedToGiveSoul","GLOBAL",0)~ + @17 + lrdemodead1b
  + ~Global("AgreedToGiveSoul","GLOBAL",0) GGT("JonRedemptionCounter",0)~ + @18 + lrdemodead1a
  + ~Global("AgreedToGiveSoul","GLOBAL",0) !GGT("JonRedemptionCounter",0)~ + @18 + lrdemodead2
  + ~!Global("AgreedToGiveSoul","GLOBAL",0)~ + @18 + lrdemodead1b
END

IF ~~ lrdemodead1a
  SAY @19
  IF ~~ + lrdemodead2
END

IF ~~ lrdemodead1b
  SAY @20
  IF ~~ + lrdemodead2
END

IF ~~ lrdemodead2
  SAY @21
     =
      @22
  IF ~~ DO ~SetGlobal("lrdemodead","LOCALS",2)~ EXIT
END

//This Dialogue will start if no soul was promised and redeeming Irenicus has failed, when the Demogorgon is hostile or goes hostile throught the dialogue.
IF ~OR(2)G("JonUndecided",3)
G("DevaQuestFailed",1)
Global("AgreedToGiveSoul","GLOBAL",0) Global("lrdemoquestion","LOCALS",1)~ DemoBetr
  SAY @23 
  ++ @24 DO ~SetGlobal("lrdemoquestion","LOCALS",2)~ EXTERN GorDemo DemoBetr1
  ++ @25 DO ~SetGlobal("lrdemoquestion","LOCALS",2)~ + DemoPromise1
END

IF ~~ DemoPromise1
  SAY @26
  IF ~Global("DemogorgonChange","GLOBAL",0)~ DO ~SG("AgreedToGiveSoul",1) ActionOverride("demogor1",ReallyForceSpell(Myself,DEMOGORGON_CHANGE))
      SetGlobal("DemogorgonChange","GLOBAL",1) TriggerActivation("DemoGorgonInfo",FALSE)~ EXIT
  IF ~Global("DemogorgonChange","GLOBAL",1)~ DO ~SG("AgreedToGiveSoul",1)~ EXIT     //I'm not quite sure if this should be 1 or 2  (1 since it is done under pressure <D>)
END

END
    



