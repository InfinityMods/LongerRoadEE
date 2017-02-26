//lrbalth3
//I realised this will work for both Ascension and vanilla

INTERJECT Balth 24 lrascbalt1
  == JONEL25J IF ~InParty("lrirenic") G("AcceptIlmater",0)~ THEN
   @0
  == JONEL25J IF ~InParty("lrirenic") G("lrHasSoulStone",0) G("AcceptIlmater",0)
G("lrBaltSoul",1)~ THEN
   @1
  == BALTH IF ~InParty("lrirenic") G("AcceptIlmater",0)~ THEN
   @2
END ++ @3
EXTERN BALTH 25
    ++ @4 EXTERN BALTH 25
    ++ @5 EXTERN BALTH 25
    ++ @6 EXTERN BALTH 25

//The Common Ground
CHAIN
IF ~G("lrbdie",3)~ THEN JONEL25J BaltSoulChain
   @7
  DO ~SG("lrbdie",4)~
  == JAHEI25J IF ~InParty("Jaheira")~ THEN
   @8
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == MINSC25J IF ~InParty("Minsc")~ THEN
   @9
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == KELDO25J IF ~InParty("Keldorn")~ THEN
   @10
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == MAZZY25J IF ~InParty("Mazzy")~ THEN
   @11
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == VALYG25J IF ~InParty("Valygar")~ THEN
   @12
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) !G("AnomenRomanceActive",2)~
THEN
   @13
     DO ~LeaveParty() Enemy() Attack("lrirenic")
SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen")
Alignment("Anomen",LAWFUL_GOOD) G("AnomenRomanceActive",2)~ THEN
   @14
     DO ~LeaveParty() SG("AnomenRomanceActive",3) Enemy()
Attack("lrirenic") SG("lrGoodAttack",1)~
  == AERIE25J IF ~InParty("Aerie")~ THEN
   @15
     DO ~LeaveParty() SG("AerieRomanceActive",3) EscapeArea()~
  == NALIA25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @16
     DO ~ChangeAlignment("Nalia",CHAOTIC_NEUTRAL)~
  == JONEL25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @17
  == JONEL25J IF ~G("lrGoodAttack",1)~ THEN
   @18
     == IMOEN25J IF ~InParty("Imoen2")~ THEN
   @19
     DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() ReallyForceSpell(Myself,DRYAD_TELEPORT) Wait(1)~
EXIT

APPEND Player1
IF ~G("AcceptIlmater",2) G("lrbaltAsc",1)~ JonStealsNoBaltSoul
  SAY @20
  ++ @21 DO ~SG("AcceptIlmater",3)~ EXTERN
JONEL25J JSNBS2
  ++ @22 
  DO ~SG("AcceptIlmater",3)~ EXTERN JONEL25J JSNBS2
END
END

APPEND JONEL25J
IF ~~ JSNBS2
  SAY @23
  ++ @24 + JSNBS3
END

IF ~~ JSNBS3
  SAY @25
  IF ~~ DO ~ ChangeAlignment(Myself,NEUTRAL) SG("lrbalt",2)~ EXIT
END

IF ~G("lrbdie",2)~ THEN BEGIN Buahhahahaha
  SAY @26
  IF ~~ DO ~ClearAllActions()
    StartCutSceneMode()
    MoveToObject("balth")
    Wait(3)
    CreateVisualEffectObject("SPDEATH3","balth")
    Wait(1)
    CreateVisualEffectObject("SPCSWOUI","balth")
    Wait(4)
    ActionOverride("balth",DestroyItem("BHAALHP1"))
    Wait(1)
    ReallyForceSpellRES("lrsoul3",Myself)
    GiveItemCreate("basstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    EndCutSceneMode()
    SG("lrbdie",3)
    Kill("balth")~ EXIT
END
END

//OR(6) InParty("Anomen") InParty("Valygar") InParty("Mazzy") InParty("Keldorn") InParty("Minsc") InParty("Jaheira")








 

