//LROASIS
//General Jamis Tobelthen - the Oasis encounter

INTERJECT AMTGEN01 1 lrOasis1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @0
END ++ @1 EXTERN JONEL25J lroasisattack
    ++ @2 EXTERN JONEL25J lroasisattack
    ++ @3 EXTERN JONEL25J lroasiscoward

//The Appends
APPEND JONEL25J

IF ~~ lroasisattack      //I'm not sure how compatible these are with the Improved Oasis. Installing Redemption might make it impossible to reach the peaceful solution..
  SAY @4
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
ActionOverride("amtgen01",Enemy())
ActionOverride("amtgen01",Shout(ALERT))~ EXIT
END

IF ~~ lroasiscoward
  SAY @5
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
ActionOverride("amtgen01",Enemy())
ActionOverride("amtgen01",Shout(ALERT))~ EXIT
END
END
