//New JONELP dialog - Irenicus removed from party

BEGIN JONEL25P
          //Should there be an area check?
IF ~G("lrHasSoulStone",1) Global("KickedOut","LOCALS",0) Dead("Abazigal") Dead("Balth") Dead("Sendai")~ Kicked1
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 + Leave1
  ++ @3 + Leave1
END

IF ~G("lrHasSoulStone",0) GGT("AgreedToGiveSoul",0) Global("KickedOut","LOCALS",0) !G("AcceptIlmater",3) Dead("Abazigal") Dead("Balth") Dead("Sendai")~ Kicked2
  SAY @4
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @5 DO ~SG("lrJonToFinal",1)~ + Leave1
  ++ @3 DO ~SG("lrJonToFinal",1)~ + Leave1
END

IF ~G("lrHasSoulStone",0) Global("KickedOut","LOCALS",0) Dead("Abazigal") Dead("Balth") Dead("Sendai")~ Kicked3
  SAY @6
  ++ @1 DO ~JoinParty()~ EXIT
  + ~G("JonUndecided",3)~ + @5 + Leave1
  + ~G("JonUndecided",3)~ + @3 + Leave1
  + ~G("AcceptIlmater",3)~ + @7 DO ~SG("lrJonToFinal",1)~ + Leave2
END

IF ~~ Leave1
  SAY @8
  IF ~~ DO ~SG("JonBanished",1) IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1000) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ Leave2
  SAY @9
  IF ~AreaCheck("AR4500")~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2218.1143]) Face(3)~ EXIT
  IF ~!AreaCheck("AR4500")~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN JP0
  SAY @10 
  IF ~~ THEN REPLY @11 GOTO JP1
  IF ~~ THEN REPLY @12 GOTO JP2
END

IF ~~ THEN BEGIN JP1
  SAY @13 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) SG("lrJonToFinal",0) SetGlobal("JonMove","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN JP2
  SAY @14 
  IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN JP3
  SAY @15 
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1000) SetGlobal("JonBanished","GLOBAL",1) ReallyForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN JP4 // kicked out
  SAY @16 
  IF ~!AreaCheck("AR4500")~ THEN REPLY @17 GOTO JP5
  IF ~AreaCheck("AR4500")~ THEN REPLY @17 GOTO JP6
  IF ~~ THEN REPLY @18 GOTO JP3
  IF ~~ THEN REPLY @19 DO ~JoinParty()
~ EXIT
END

IF ~!AreaCheck("AR4500")~ THEN BEGIN JP5 //send him to the PP
  SAY @20 
  IF ~~ THEN REPLY @21 GOTO JP3
  IF ~~ THEN REPLY @22
  DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~AreaCheck("AR4500")~ THEN BEGIN JP6 //send him to the PP
  SAY @23 
  IF ~~ THEN REPLY @21 GOTO JP3
  IF ~~ THEN REPLY @24
  DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2218.1143]) Face(3)~
EXIT
END
