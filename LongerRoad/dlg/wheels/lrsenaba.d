APPEND JONEL25J
//Sendai, promised soul, Aba alive

IF ~!Dead("Sendai") !Dead("Abazigal") GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",1) G("lrHasSoulStone",0) AreaCheck("AR6107")~ SendaiDemand1
  SAY @0 
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",2)~ + SAgreesToWait
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",2)~ + SIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",2) SG("lrSendaiSoul",1)~ + SSettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",2) SG("lrSendaiSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + SPerceptive
  ++ @5 DO ~SG("lrDemandBSSoul",2) IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + SAgreesToWait
  ++ @6 DO ~SG("lrDemandBSSoul",2)~ + SAgreesToWait
END

//Sendai, didn't promise soul, Aba alive
IF ~!Dead("Sendai") !Dead("Abazigal") !GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",1) G("lrHasSoulStone",0) AreaCheck("AR6107")~ SendaiDemand2
  SAY @7 
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",2)~ + SAgreesToWait
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",2)~ + SIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",2) SG("lrSendaiSoul",1)~ + SSettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",2) SG("lrSendaiSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + SPerceptive
  ++ @8 DO ~SG("lrDemandBSSoul",2)~ + SAgreesToWait
  ++ @6 DO ~SG("lrDemandBSSoul",2)~ + SAgreesToWait
END

//Sendai, promised soul, Aba dead
IF ~!Dead("Sendai") Dead("Abazigal") GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",3) G("lrHasSoulStone",0) !G("AcceptIlmater",1) AreaCheck("AR6107") G("lrBaltSoul",0)~ SendaiDemand3
  SAY @9 
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",4)~ + SNoRespite
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",4)~ + SIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",4) SG("lrSendaiSoul",1)~ + SSettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",4) SG("lrSendaiSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + SPerceptive
  ++ @5 DO ~SG("lrDemandBSSoul",4) IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + SAlter
  ++ @6 DO ~SG("lrDemandBSSoul",4)~ + SAlter
END

//Sendai, didn't promise soul, Aba dead
IF ~!Dead("Sendai") Dead("Abazigal") !GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",3) G("lrHasSoulStone",0) !G("AcceptIlmater",1) AreaCheck("AR6107") G("lrBaltSoul",0)~ SendaiDemand4
  SAY @10  
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",4)~ + SNoRespite
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",4)~ + SIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",4) SG("lrSendaiSoul",1)~ + SSettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",4) SG("lrSendaiSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + SPerceptive
  ++ @8 DO ~SG("lrDemandBSSoul",4)~ + SAlter
  ++ @6 DO ~SG("lrDemandBSSoul",4)~ + SAlter
END

//Abazigal, promised soul, Sendai alive
IF ~!Dead("Sendai") !Dead("Abazigal") GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",1) G("lrHasSoulStone",0) AreaCheck("AR6004")~ AbaDemand1
  SAY @11
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",2)~ + AAgreesToWait
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",2)~ + AIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",2) SG("lrAbazigalSoul",1)~ + ASettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",2) SG("lrAbazigalSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + APerceptive
  ++ @5 DO ~SG("lrDemandBSSoul",2) IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + AAgreesToWait
  ++ @6 DO ~SG("lrDemandBSSoul",2)~ + AAgreesToWait
END

//Abazigal, didn't promise soul, Sendai alive
IF ~!Dead("Sendai") !Dead("Abazigal") !GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",1) G("lrHasSoulStone",0) AreaCheck("AR6004")~ AbaDemand2
  SAY @12
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",2)~ + AAgreesToWait
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",2)~ + AIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",2) SG("lrAbazigalSoul",1)~ + ASettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",2) SG("lrAbazigalSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + APerceptive
  ++ @8 DO ~SG("lrDemandBSSoul",2)~ + AAgreesToWait
  ++ @6 DO ~SG("lrDemandBSSoul",2)~ + AAgreesToWait
END

//Abazigal, promised soul, Sendai dead
IF ~Dead("Sendai") !Dead("Abazigal") GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",3) G("lrHasSoulStone",0) !G("AcceptIlmater",1) AreaCheck("AR6004") G("lrBaltSoul",0)~ AbaDemand3
  SAY @76
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",4)~ + ANoRespite
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",4)~ + AIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",4) SG("lrAbazigalSoul",1)~ + ASettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",4) SG("lrAbazigalSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + APerceptive
  ++ @5 DO ~SG("lrDemandBSSoul",4) IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + AAlter
  ++ @6 DO ~SG("lrDemandBSSoul",4)~ + AAlter
END

//Abazigal, didn't promise soul, Sendai dead
IF ~Dead("Sendai") !Dead("Abazigal") !GGT("AgreedToGiveSoul",0) G("lrDemandBSSoul",3) G("lrHasSoulStone",0) !G("AcceptIlmater",1) AreaCheck("AR6004") G("lrBaltSoul",0)~ AbaDemand4
  SAY @14
  ++ @1 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5) SG("lrDemandBSSoul",4)~ + ANoRespite
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 DO ~SG("lrDemandBSSoul",4)~ + AIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrDemandBSSoul",4) SG("lrAbazigalSoul",1)~ + ASettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrDemandBSSoul",4) SG("lrAbazigalSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + APerceptive
  ++ @8 DO ~SG("lrDemandBSSoul",4)~ + AAlter
  ++ @6 DO ~SG("lrDemandBSSoul",4)~ + AAlter
END

IF ~~ SAgreesToWait
  SAY @15
  ++ @16 + SFinalWord
  ++ @17 EXIT
END

IF ~~ AAgreesToWait
  SAY @15
  ++ @16 + AFinalWord
  ++ @17 EXIT
END

IF ~~ SIlmater
  SAY @18
  ++ @19 + SSettled
  ++ @20 DO ~SG("lrSendaiSoul",1)~ + SPerceptive
  ++ @21 + SAlter
END

IF ~~ AIlmater
  SAY @18
  ++ @19 + ASettled
  ++ @20 DO ~SG("lrAbazigalSoul",1)~ + APerceptive
  ++ @21 + AAlter
END

IF ~~ SPerceptive
  SAY @22
  ++ @23 + SSettled
  ++ @24 + SSettled
  ++ @25 + SSettled
END

IF ~~ APerceptive
  SAY @22
  ++ @23 + ASettled
  ++ @24 + ASettled
  ++ @25 + ASettled
END

IF ~~ SSettled
  SAY @26
  IF ~~ THEN GOTO SSettled1
END

IF ~~ SSettled1
  SAY @27
  ++ @28 + Explain
  ++ @29 EXIT
  ++ @30 EXIT
END

IF ~~ ASettled
  SAY @26
  IF ~~ THEN GOTO ASettled1
END

IF ~~ ASettled1
   SAY @27
  ++ @28 + Explain
  ++ @29 EXIT
  ++ @30 EXIT
END

IF ~~ SAlter
  SAY @31
     =
      @32
  ++ @33 DO ~SG("lrBaltSoul",1)~ + SPerceptive
  ++ @34 DO ~SG("lrSendaiSoul",1)~ + SPerceptive
  ++ @35 + SSettled
  ++ @16 + SFinalWord
END

IF ~~ AAlter
  SAY @31
     =
      @32
  ++ @33 DO ~SG("lrBaltSoul",1)~ + APerceptive
  ++ @36 DO ~SG("lrAbazigalSoul",1)~ + APerceptive
  ++ @35 + ASettled
  ++ @16 + AFinalWord
END

IF ~~ Explain
  SAY @37
     =
      @38
  ++ @39 + Explain2
END

IF ~~ Explain2
  SAY @40
  IF ~~ EXIT
END

IF ~~ SNoRespite
  SAY @41
  IF ~~ + SFinalWord
END

IF ~~ ANoRespite
  SAY @41
  IF ~~ + AFinalWord
END

IF ~~ SFinalWord
  SAY @42
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 + SIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrSendaiSoul",1)~ + SSettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrSendaiSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + SPerceptive
  + ~!GGT("AgreedToGiveSoul",0)~ + @8 + SAlter
  + ~GGT("AgreedToGiveSoul",0)~ + @5 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + SAlter
  ++ @6 + SAlter
END

IF ~~ AFinalWord
  SAY @42
  + ~!Alignment(Player1,MASK_EVIL)~ + @2 + AIlmater
  + ~Alignment(Player1,MASK_EVIL)~ + @3 DO ~SG("lrAbazigalSoul",1)~ + ASettled
  + ~!Alignment(Player1,MASK_EVIL)~ + @4 DO ~SG("lrAbazigalSoul",1) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)~ + APerceptive
  + ~!GGT("AgreedToGiveSoul",0)~ + @8 + AAlter
  + ~GGT("AgreedToGiveSoul",0)~ + @5 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-5)~ + AAlter
  ++ @6 + AAlter
END

IF ~~ NoThief
  SAY @43
  ++ @44 + NoThief2
END

IF ~~ NoThief2
  SAY @45
  IF ~~ THEN DO ~ChangeAlignment(Myself,NEUTRAL) Wait(1)~ EXIT
END

END

//IF Jon doesn't take the soul.
APPEND Player1
IF ~Global("AcceptIlmater","GLOBAL",2) !G("lrbaltAsc",1)~ JonStealsNoSoul
  SAY @46
  ++ @47 DO ~SG("AcceptIlmater",3)~ EXTERN JONEL25J NoThief
  ++ @48 DO ~SG("AcceptIlmater",3)~ EXTERN JONEL25J NoThief
END
END


//The Omnipotent INTERJECT_COPY_TRANS's
INTERJECT_COPY_TRANS SENDAI 14 lrsendaisoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1)~ THEN
   @49
END
INTERJECT_COPY_TRANS SENDAI 23 lrsendaisoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1)~ THEN
   @49
END
INTERJECT_COPY_TRANS SENDAI 29 lrsendaisoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1)~ THEN
   @49
END
INTERJECT_COPY_TRANS SENDAI 31 lrsendaisoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1)~ THEN
   @49
END
INTERJECT_COPY_TRANS SENDAI 32 lrsendaisoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1)~ THEN
   @49
END

INTERJECT_COPY_TRANS ABAZIGAL 0 lrabazigalsoul1
  == JONEL25J IF ~InParty("lrirenic") G("lrAbazigalSoul",1)~ THEN
   @50
   == ABAZIGAL 
   @51
END

INTERJECT_COPY_TRANS SENDAI 15 lrsendaisoul2
  == JONEL25J IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN
   @52
END

EXTEND_BOTTOM SENDAI 16
     IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrsendai
END
EXTEND_BOTTOM SENDAI 33
     IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrsendai
END
EXTEND_BOTTOM SENDAI 34
     IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrsendai
END
EXTEND_BOTTOM SENDAI 35
     IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrsendai
END


EXTEND_BOTTOM SENDAI 17
     IF ~InParty("lrirenic") G("lrSendaiSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrsendai
END

APPEND JONEL25J
  IF ~~ THEN BEGIN lrsendai
    SAY @53
    IF ~~ THEN EXTERN SENDAI NOO
  END
END

APPEND SENDAI
  IF ~~ THEN BEGIN NOO
  SAY @54
  IF ~!Dead("Abazigal") !Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
    EraseJournalEntry(67464)
    EraseJournalEntry(67465)
    SetGlobal("Enclave","GLOBAL",1)
    //DestroyItem("BHAALHP1")
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("SENDAI")
    EndCutSceneMode()
    SG("lrsendai",1)
    Kill(Myself)
    ~ EXIT
  IF ~Dead("Abazigal") !Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
    SetGlobal("Enclave","GLOBAL",2)
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    //DestroyItem("BHAALHP1")
    AddXP2DA("SENDAI")
    EraseJournalEntry(67718)
    EraseJournalEntry(72245)
    EraseJournalEntry(67464)
    EraseJournalEntry(67465)
    StartCutScene("cut240a")
    SG("lrsendai",1)
    Kill(Myself)
    ~ UNSOLVED_JOURNAL #67720 EXIT
  IF ~Dead("balth") !Dead("abazigal") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
	SetGlobal("OpenPortal","AR6108",1)
	StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
	EraseJournalEntry(67464)
	EraseJournalEntry(67465)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("SENDAI")
    SG("lrsendai",1)
	StartCutScene("dw#melbd")
	Kill(Myself)
	~ SOLVED_JOURNAL #100130 EXIT
  IF ~Dead("abazigal") Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
	SetGlobal("OpenPortal","AR6108",1)
	StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
	EraseJournalEntry(67464)
	EraseJournalEntry(67465)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("SENDAI")
    SG("lrsendai",1)
	Kill(Myself)
    EndCutSceneMode()
	~ EXIT
  IF ~Dead("dw#melis") Dead("balth")~ THEN DO ~ClearAllActions()
	SetGlobal("OpenPortal","AR6108",1)
	StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
	EraseJournalEntry(67464)
	EraseJournalEntry(67465)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("SENDAI")
    SG("lrsendai",1)
	Wait(1)
	Kill(Myself)
	EndCutSceneMode()
	~ EXIT
  IF ~Dead("dw#melis") !Dead("balth")~ THEN DO ~ClearAllActions()
	SetGlobal("OpenPortal","AR6108",1)
	StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","sendai")
	ActionOverride("lrirenic",ForceSpell("sendai",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","sendai")
    Wait(2)
	EraseJournalEntry(67464)
	EraseJournalEntry(67465)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul1",Myself))
    GiveItemCreate("sesstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("SENDAI")
    SG("lrsendai",1)
	Wait(1)
	Kill(Myself)
	EndCutSceneMode()
	~ UNSOLVED_JOURNAL #100133
	EXIT
    END
END

EXTEND_BOTTOM ABAZIGAL 4
     IF ~InParty("lrirenic") G("lrAbazigalSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrabazi
END

EXTEND_BOTTOM ABAZIGAL 5
     IF ~InParty("lrirenic") G("lrAbazigalSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrabazi
END

EXTEND_BOTTOM ABAZIGAL 33
     IF ~InParty("lrirenic") G("lrAbazigalSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrabazi
END

EXTEND_BOTTOM ABAZIGAL 34
     IF ~InParty("lrirenic") G("lrAbazigalSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrabazi
END

EXTEND_BOTTOM ABAZIGAL 35
     IF ~InParty("lrirenic") G("lrAbazigalSoul",1) G("AcceptIlmater",0)~ THEN EXTERN JONEL25J lrabazi
END


APPEND JONEL25J
  IF ~~ THEN BEGIN lrabazi
    SAY @55
    IF ~~ THEN EXTERN ABAZIGAL NOO
  END
END

APPEND ABAZIGAL
  IF ~~ THEN BEGIN NOO
  SAY @54
  IF ~!Dead("Sendai") !Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
    EraseJournalEntry(67718)
    EraseJournalEntry(72245)
    SetGlobal("Enclave","GLOBAL",1)
    //DestroyItem("BHAALHP1")
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("ABAZIGAL")
    Wait(1)
    EndCutSceneMode()
    SG("lrabazi",1)
    Kill(Myself)
    ~ SOLVED_JOURNAL #67719 EXIT
  IF ~Dead("Sendai") !Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
    SetGlobal("Enclave","GLOBAL",2)
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    //DestroyItem("BHAALHP1")
    AddXP2DA("ABAZIGAL")
    EraseJournalEntry(67718)
    EraseJournalEntry(72245)
    EraseJournalEntry(67464)
    EraseJournalEntry(67465)
    StartCutScene("cut240a")
    SG("lrabazi",1)
    Kill(Myself)
    ~ UNSOLVED_JOURNAL #67720 EXIT
  IF ~Dead("balth") !Dead("sendai") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
    EraseJournalEntry(67718)
    EraseJournalEntry(72245)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("ABAZIGAL")
    Wait(1)
    SG("lrabazi",1)
	StartCutScene("dw#melbd")
    Kill(Myself)
    ~ SOLVED_JOURNAL #100201 EXIT
  IF ~Dead("sendai") Dead("balth") !Dead("dw#melis")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
	EraseJournalEntry(67718)
	EraseJournalEntry(72245)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("ABAZIGAL")
    Wait(1)
    SG("lrabazi",1)
    Kill(Myself)
	EndCutSceneMode()
    ~ EXIT
  IF ~Dead("dw#melis") Dead("balth") !Dead("Sendai")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
	EraseJournalEntry(67718)
	EraseJournalEntry(72245)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("ABAZIGAL")
    Wait(1)
    SG("lrabazi",1)
    Kill(Myself)
    EndCutSceneMode()
    ~ EXIT
  IF ~Dead("dw#melis") !Dead("balth") !Dead("Sendai")~ THEN DO ~ClearAllActions()
    StartCutSceneMode()
	MoveViewObject("lrirenic",INSTANT)
	Wait(1)
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_SPELLSTRIKE))
    Wait(2)
	CreateVisualEffectObject("SPCSWOUI","abazigal")
	ActionOverride("lrirenic",ForceSpell("abazigal",CUTSCENE_MIND_FOG))
    Wait(1)
	CreateVisualEffectObject("SPDEATH3","abazigal")
    Wait(2)
	EraseJournalEntry(67718)
	EraseJournalEntry(72245)
	EraseJournalEntry(66357)
    Wait(1)
    ActionOverride("lrirenic",ReallyForceSpellRES("lrsoul2",Myself))
    GiveItemCreate("absstn","lrirenic",0,0,0)
    SG("lrHasSoulStone",1)
    AddXP2DA("ABAZIGAL")
    Wait(1)
    SG("lrabazi",1)
    Kill(Myself)
    EndCutSceneMode()
    ~ SOLVED_JOURNAL #100133 EXIT
    END
END

//The soul-stealing commentary
//If only there had been an openening sentence that was identical, one chain would have been enough.
//It might be necessary to add ActionOverride() to the ActionText's
CHAIN IF ~G("lrsendai",2)~ THEN JONEL25J CommentSendai
   @56
    DO ~SG("lrsendai",3)~
  == JAHEI25J IF ~InParty("Jaheira")~ THEN
   @57
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == MINSC25J IF ~InParty("Minsc")~ THEN
   @58
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == KELDO25J IF ~InParty("Keldorn")~ THEN
   @59
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == MAZZY25J IF ~InParty("Mazzy")~ THEN
   @60
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == VALYG25J IF ~InParty("Valygar")~ THEN
   @61
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",LAWFUL_GOOD) !G("AnomenRomanceActive",2)~ THEN
   @62
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",LAWFUL_GOOD) G("AnomenRomanceActive",2)~ THEN
   @63
     DO ~LeaveParty() SG("AnomenRomanceActive",3) Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == AERIE25J IF ~InParty("Aerie")~ THEN
   @64
     DO ~LeaveParty() SG("AerieRomanceActive",3) EscapeArea()~
  == NALIA25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @65
     DO ~ChangeAlignment("Nalia",CHAOTIC_NEUTRAL)~
  == JONEL25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @66
  == JONEL25J IF ~G("lrGoodAttack",1)~ THEN
   @67
  == IMOEN25J IF ~InParty("Imoen2")~ THEN
   @68
     DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() ReallyForceSpell(Myself,DRYAD_TELEPORT) Wait(1)~
EXIT

CHAIN IF ~G("lrabazi",2)~ THEN JONEL25J CommentAbazi
   @69
    DO ~SG("lrabazi",3)~
  == JAHEI25J IF ~InParty("Jaheira")~ THEN
   @57
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == MINSC25J IF ~InParty("Minsc")~ THEN
   @58
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == KELDO25J IF ~InParty("Keldorn")~ THEN
   @59
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == MAZZY25J IF ~InParty("Mazzy")~ THEN
   @60
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == VALYG25J IF ~InParty("Valygar")~ THEN
   @61
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",LAWFUL_GOOD) !G("AnomenRomanceActive",2)~ THEN
   @62
     DO ~LeaveParty() Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",LAWFUL_GOOD) G("AnomenRomanceActive",2)~ THEN
   @63
     DO ~LeaveParty() SG("AnomenRomanceActive",3) Enemy() Attack("lrirenic") SG("lrGoodAttack",1)~
  == AERIE25J IF ~InParty("Aerie")~ THEN
   @64
     DO ~LeaveParty() SG("AerieRomanceActive",3) EscapeArea()~
  == NALIA25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @65
     DO ~ChangeAlignment("Nalia",CHAOTIC_NEUTRAL)~
  == JONEL25J IF ~InParty("Nalia") G("LRJonNally",2)~ THEN
   @66
  == JONEL25J IF ~G("lrGoodAttack",1)~ THEN
   @67
  == IMOEN25J IF ~InParty("Imoen2")~ THEN
   @68
     DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() ReallyForceSpell(Myself,DRYAD_TELEPORT) Wait(1)~
EXIT

APPEND JONEL25J
IF ~Global("lrJonTricked","LOCALS",2)~ Ret1
  SAY @70
  IF ~~ DO ~SetGlobal("lrJonTricked","LOCALS",3)~ + Ret2
END

IF ~~ Ret2
  SAY @71
  IF ~OR(2) Dead("Balth") G("BalthazarFights",1)~ DO
~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
  + ~!Dead("Balth") !G("BalthazarFights",1)~ + @72
+ Ret3
END

IF ~~ Ret3
  SAY @73
     =
      @32
  ++ @33 DO ~SG("lrBaltSoul",1)~ + Ret4
  ++ @74 DO ~
SetGlobal("JonUndecided","GLOBAL",3)
IncrementGlobal("JonRedemptionCounter","LOCALS",-1000)
SG("AcceptIlmater",0)
SG("lrSHoldOn",0)~ + Ret4
END

IF ~~ Ret4
  SAY @75
  IF ~~ EXIT
END
END