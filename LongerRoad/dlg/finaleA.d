
//Ascension must be installed first in order for this to work!
//And as things stand now, the LR version will cause some of the Ascension-Jon dialogue to not be shown.
//Much of the code is more or less stolen from the Redemption Mod.
APPEND Irenic2
IF WEIGHT #-2~Global("FinalFight","AR6200",2)~THEN BEGIN LRReplace1
  SAY @0
  ++ @1 + lrAscJon1
  ++ @2 + lrAscJon1
END

IF ~~ lrAscJon1
  SAY @80
  ++ @81 + lrAscJon2
  ++ @82 + lrAscJon2
END

IF ~~ lrAscJon2
  SAY @83 
  IF ~~ + 15
END
END

BEGIN LRGODEMO
IF ~G("DemogorgonCometh",1)~ lrdemo1
  SAY @3
     =
      @4
  ++ @5 DO ~SG("DemogorgonCometh",2)~ + lrdemo2
  ++ @6 DO ~SG("DemogorgonCometh",2)~ + lrdemo2
  ++ @7 DO ~SG("DemogorgonCometh",2)~ + lrdemo2
END

IF ~~ lrdemo2
  SAY @8
  IF ~G("lrJonMetDG",0)~ + lrdemo3b
  IF ~G("lrJonMetDG",1)~ + lrdemo3a
END

IF ~~ lrdemo3a
  SAY @9
  IF ~~ + lrdemo3b
END

IF ~~ lrdemo3b
  SAY @10
  IF ~~ EXTERN JONEL25J jondemo1
END

IF ~~ lrdemo4
  SAY @11
     =
      @12
     =
      @13
     =
      @14
     =
      @15
     =
      @16
     =
      @17
  ++ @18 + lrdemo5
END

IF ~~ lrdemo5
  SAY @19
     =
      @20
  ++ @21 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem1")~ EXIT
  ++ @22 + lrdemo6
END

IF ~~ lrdemo6
  SAY @23
  IF ~RandomNum(3,1)~ + riddle1a
  IF ~RandomNum(3,2)~ + riddle1b
  IF ~RandomNum(3,3)~ + riddle1c
END

IF ~~ riddle1a
  SAY @24
  ++ @25 + lrdemo7
  ++ @26 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @27 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
END

IF ~~ riddle1b
  SAY @28
  ++ @29 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @30 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @31 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @32 + lrdemo7
END

IF ~~ riddle1c
  SAY @33
  ++ @32 + lrdemo7
  ++ @34 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @35 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @36 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
END

IF ~~ lrdemo7
  SAY @37
     =
      @38
     =
      @39
  ++ @40 + lrdemo8
END

IF ~~ lrdemo8
  SAY @41
  ++ @42 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @43 EXTERN JONEL25J jondemo3
END

IF ~~ lrdemo9
  SAY @44
  + ~RandomNum(4,1)~ + @45 + riddle2b
  + ~RandomNum(4,2)~ + @45 + riddle2a
  + ~RandomNum(4,3)~ + @45 + riddle2a
  + ~RandomNum(4,4)~ + @45 + riddle2b
END

IF ~~ riddle2a
  SAY @46
     =
      @47
  ++ @48 + LA1
  ++ @49 + LH1
  ++ @50 + RA1
  ++ @51 + RH1
END

IF ~~ riddle2b
  SAY @52
     =
      @53
     =
      @54
  ++ @48 + LA2
  ++ @49 + LH2
  ++ @50 + RA2
  ++ @51 + RH2
END

IF ~~ LA1
  SAY @55
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 + Noble
END

IF ~~ LA2
  SAY @55
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 + Blood
END

IF ~~ LH1
  SAY @60
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 + Noble
END

IF ~~ LH2
  SAY @60
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 + Blood
END

IF ~~ RA1
  SAY @55
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 + Noble
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
END

IF ~~ RA2
  SAY @55
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 + Blood
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
END

IF ~~ RH1
  SAY @60
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 + Noble
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 DO ~ClearAllActions() StartCutSceneMode()StartCutScene("redgdem2")~ EXIT
END

IF ~~ RH2
  SAY @60
  ++ @56 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @57 + Blood
  ++ @58 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  ++ @59 DO ~ClearAllActions() StartCutSceneMode()StartCutScene("redgdem2")~ EXIT
END

IF ~~ Noble
  SAY @61
  IF ~~ + lrdemo10
END

IF ~~ Blood
  SAY @62
  IF ~~ + lrdemo10
END

IF ~~ lrdemo10
  SAY @63
     =
      @64
  IF ~~ THEN REPLY @65 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @66 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @67 GOTO lrdemo11
  IF ~~ THEN REPLY @68 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @69 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @70 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @71 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @72 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem2")~ EXIT
END

IF ~~ lrdemo11
  SAY @73
     =
      @74
  ++ @75
      DO ~ClearAllActions() StartCutSceneMode() StartCutScene("redgdem3")~ EXIT
END

APPEND JONEL25J
IF ~~ jondemo1
  SAY @93
  ++ @94 EXTERN lrgodemo lrdemo4
  ++ @95 EXTERN lrgodemo lrdemo4
  ++ @96 EXTERN lrgodemo lrdemo4
  ++ @97 + jondemo2
END

IF ~~ jondemo2
  SAY @98
  ++ @99 EXTERN lrgodemo lrdemo4
END

IF ~~ jondemo3
  SAY @100
  IF ~~ THEN EXTERN LRGODEMO lrdemo9
END
END

ADD_TRANS_TRIGGER IMOEN25P 18 ~Exists("finiren") !InParty("lrirenic") G("lrJonToFinal",0) G("AcceptIlmater",0)~

EXTEND_BOTTOM FINBODH 0
IF ~InParty("lrirenic")~ EXTERN JONEL25J lrBodhiJonMelissan
END

EXTEND_BOTTOM IMOEN25P 18
+ ~!Exists("finiren") OR(5) InParty("lrirenic") G("lrJonToFinal",1) !G("AcceptIlmater",0) G("JonBanished",1) Global("lrJonNotInParty","GLOBAL",1)~ + @76 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 MelB
+ ~!Exists("finiren") OR(5) InParty("lrirenic") G("lrJonToFinal",1) !G("AcceptIlmater",0) G("JonBanished",1) Global("lrJonNotInParty","GLOBAL",1)~ + @77 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 MelB
+ ~!Exists("finiren") OR(5) InParty("lrirenic") G("lrJonToFinal",1) !G("AcceptIlmater",0) G("JonBanished",1) Global("lrJonNotInParty","GLOBAL",1)~ + @78 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 MelB
+ ~!Exists("finiren") OR(5) InParty("lrirenic") G("lrJonToFinal",1) !G("AcceptIlmater",0) G("JonBanished",1) Global("lrJonNotInParty","GLOBAL",1)~ + @79 DO ~SetGlobal("ImoenHate","GLOBAL",1) SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 MelB
END

EXTEND_BOTTOM FINMEL01 3 4 
IF ~Dead("lrirenic") !G("AcceptIlmater",0) Global("lrMelDisbelief","GLOBAL",0)~ DO ~SetGlobal("lrMelDisbelief","GLOBAL",1)~ + MelC
IF ~OR(3) InParty("lrirenic") G("lrJonToFinal",1) G("lrHasSoulStone",1) Global("lrMelDisbelief","GLOBAL",0)~ DO ~SetGlobal("lrMelDisbelief","GLOBAL",1)~ + MelC
END

EXTEND_BOTTOM FINMEL01 2
IF ~Dead("lrirenic") !G("AcceptIlmater",0) Global("lrMelDisbelief","GLOBAL",0)~ DO ~SetGlobal("lrMelDisbelief","GLOBAL",1)~ + MelC
IF ~OR(3) InParty("lrirenic") G("lrJonToFinal",1) G("lrHasSoulStone",1) Global("lrMelDisbelief","GLOBAL",0)~ DO ~SetGlobal("lrMelDisbelief","GLOBAL",1)~ + MelC
END

EXTEND_TOP FINSOL01 38
IF ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ EXTERN FINSOL01 5
IF ~OR(2) InParty("lrIrenic") G("lrJonToFinal",1) OR(2) !Dead("lrirenic") G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ EXTERN FINSOL01 lrSolar1
IF ~Dead("lrirenic") OR(2) G("lrHasSoulStone",1) !G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ EXTERN FINSOL01 5
END

APPEND FINMEL01
/*IF ~~ MelA
  SAY @120
  IF ~~ EXTERN FINBODH 0
END*/

IF ~~ MelB
  SAY @84
 IF ~!Global("DemogorgonIsDead","GLOBAL",1) Difficulty(3)~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("redbodh1")~ EXIT
    IF ~!Global("DemogorgonIsDead","GLOBAL",1) DifficultyGT(3)~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("redbodh2")~ EXIT
    IF ~!Global("DemogorgonIsDead","GLOBAL",1) DifficultyLT(3)~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("redbodh0")~ EXIT    
    IF ~Global("DemogorgonIsDead","GLOBAL",1)~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("redbodh3")~ EXIT 
END

IF ~~ MelC
  SAY @85
  IF ~~ EXTERN FINMEL01 lrAmelJonChain2
  IF ~Dead("lrirenic") !G("AcceptIlmater",0)~ + MelSpecial
  IF ~!InParty("lrirenic") OR(2) G("lrJonToFinal",1) G("lrHasSoulStone",1)~ + MelSpecial
END

IF ~~ MelSpecial
  SAY @86
     =
      @87
  IF ~~ DO ~StartCutSceneMode() StartCutScene("finiren1")~ EXIT
END
END

ADD_TRANS_ACTION JONEL25P BEGIN 10 END BEGIN END ~SetGlobal("lrJonNotInParty","GLOBAL", 1)~
ADD_TRANS_ACTION JONEL25P BEGIN 11 END BEGIN END ~SetGlobal("lrJonNotInParty","GLOBAL", 1)~
ADD_TRANS_ACTION JONEL25P BEGIN 6 END BEGIN END ~SetGlobal("lrJonNotInParty","GLOBAL", 0)~

APPEND FINBODH

IF WEIGHT #-4~InParty("lrirenic")~ Bodhi
  SAY @88 
  ++ @89 + lrJBChain1
END

IF WEIGHT #-4~!InParty("lrirenic") !Exists("finiren") OR(4) G("lrJonToFinal",1) Dead("lrirenic") Global("lrJonNotInParty","GLOBAL",1) G("JonBanished",1)~ Bodhi1
  SAY @90
     =
      @91 
  ++ @89 + Bodhi2
END

IF ~~ Bodhi2
  SAY @92
  IF ~InParty("Imoen2")~ 
       THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo1")~ EXIT	 
  IF ~!InParty("Imoen2")~ 
     THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo2")~ EXIT
END
END

CHAIN JONEL25J lrBodhiJonMelissan
   @101
  == FINMEL01
   @102
  == FINBODH
   @103 
    DO ~SetGlobal("BodhiTalks","LOCALS",1)~
  == FINMEL01
   @104
  =
   @105
END  IF ~InPartyAllowDead("Imoen2") !Dead("Imoen2")~ EXTERN FINMEL01 16
     IF ~InPartyAllowDead("Imoen2") Dead("Imoen2")~ EXTERN FINMEL01 16
     IF ~!InPartyAllowDead("Imoen2") !Dead("Imoen2")~ EXTERN FINMEL01 18
     IF ~!InPartyAllowDead("Imoen2") Dead("Imoen2")~ EXTERN FINMEL01 18

INTERJECT FINBODH 0 lrFinBodhi1
  == FINMEL01 IF ~!InParty("lrirenic") Global("lrMelDisbelief","GLOBAL",1)~ THEN
   @106
  =
   @107
  == FINBODH
   @108 
    DO ~SetGlobal("BodhiTalks","LOCALS",1)~
  == FINMEL01
   @109
  =
   @105
END  IF ~InPartyAllowDead("Imoen2") !Dead("Imoen2")~ EXTERN FINMEL01 16
     IF ~InPartyAllowDead("Imoen2") Dead("Imoen2")~ EXTERN FINMEL01 16
     IF ~!InPartyAllowDead("Imoen2") !Dead("Imoen2")~ EXTERN FINMEL01 18
     IF ~!InPartyAllowDead("Imoen2") Dead("Imoen2")~ EXTERN FINMEL01 18

CHAIN FINMEL01 lrAmelJonChain2
   @110
  == JONEL25J
   @111 
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @112
    == FINMEL01 IF ~G("lrHasSoulStone",0)~ THEN
     @113
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @114
    == FINMEL01 IF ~G("lrHasSoulStone",0)~ THEN
     @115
    == JONEL25J IF ~G("lrHasSoulStone",0) Alignment("lrirenic",MASK_EVIL)~ THEN
     @116
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @117
  == JONEL25J IF ~G("lrHasSoulStone",1)~ THEN
   @118  
  == FINMEL01
   @119
  =
   @120
END IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finiren1")~ EXIT

CHAIN FINBODH lrJBChain1
   @121 
  == JONEL25J
   @122 
  == FINBODH
   @123 
  == JONEL25J
   @124 
  == FINBODH
   @125
END IF ~InParty("Imoen2")~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("resimo1")~ EXIT    
	IF ~!InParty("Imoen2")~ THEN DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("resimo2")~ EXIT			