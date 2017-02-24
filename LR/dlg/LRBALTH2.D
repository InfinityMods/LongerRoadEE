//I'm presuming that a global called LRHasSoulStone exists, even though there's no evidence supporting that thought.

APPEND JONEL25J     //I really have no clue of how high is 'high' or how low is 'low'.
IF ~Global("lrNearBalt","LOCALS",1) Alignment(Myself,MASK_EVIL)~ Powerful
  SAY @0
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",1) G("lrHasSoulStone",0)~ + @1 + lastchance1
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",1) G("lrHasSoulStone",0)~ + @2 + lastchance1
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",1) G("lrHasSoulStone",0)~ + @3 + lastchance1
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",0) G("lrHasSoulStone",0)~ + @1 + lastchance2
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",0) G("lrHasSoulStone",0)~ + @2 + lastchance2
    + ~GLT("JonRedemptionCounter",41) G("lrBaltSoul",0) G("lrHasSoulStone",0)~ + @3 + lastchance2
    + ~!G("lrHasSoulStone",0)~ + @1 + noneed
    + ~!G("lrHasSoulStone",0)~ + @2 + noneed
    + ~!G("lrHasSoulStone",0)~ + @3 + noneed
    + ~GGT("JonRedemptionCounter",40) G("DevaQuestSolved",1) G("lrHasSoulStone",0)~ + @1 + baltgood
    + ~GGT("JonRedemptionCounter",40) G("DevaQuestSolved",1) G("lrHasSoulStone",0)~ + @2 + baltgood
    + ~GGT("JonRedemptionCounter",40) G("DevaQuestSolved",1) G("lrHasSoulStone",0)~ + @3 + baltgood
END

IF ~~ lastchance1
  SAY @4
  IF ~~ DO ~SetGlobal("lrNearBalt","LOCALS",2)~ EXIT
END

IF ~~ lastchance2
  SAY @5
  IF ~~ DO ~SetGlobal("lrNearBalt","LOCALS",2)~ EXIT
END

IF ~~ noneed
  SAY @6
  IF ~~ DO ~SetGlobal("lrNearBalt","LOCALS",2)~ EXIT
END

IF ~~ baltgood
  SAY @7
  IF ~~ DO ~SetGlobal("lrNearBalt","LOCALS",2)~ EXIT
END
END

