BEGIN ~BIMP1~

IF ~Global("ImpsTalked", "GLOBAL", 0)~ THEN BEGIN DI1
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("ImpsTalked", "GLOBAL", 1)~ EXTERN BIMP2 JON_IMPS1
END

IF ~~ THEN BEGIN DI3
   SAY @1
   IF ~~ THEN EXTERN LRABAIA BEB_IMPS1
END

IF ~~ THEN BEGIN DI2
   SAY @2
   IF ~~ THEN REPLY @3 EXTERN BIMP1 DI3
   IF ~~ THEN REPLY @4 EXTERN BIMP1 DI3
   IF ~~ THEN REPLY @5 EXTERN BIMP1 DI3
END

IF ~~ THEN BEGIN DI4
   SAY @6
   IF ~~ THEN REPLY @7 GOTO DI5
   IF ~!PartyGoldLT(10000)~ THEN REPLY @8 GOTO DI8 // INSERT MONEY CONDITION AT THIS POINT
   IF ~!PartyGoldLT(1000) OR(2) 
   CheckStatGT(Player1,13,CHR)
   CheckStatGT(Player1,13,WIS)~ THEN REPLY @9 GOTO DI7 // AGAIN TINKER WITH MONEY HERE
   IF ~~ THEN REPLY @10 GOTO DI5
END

IF ~~ THEN BEGIN DI5
   SAY @11
   IF ~~ THEN EXIT
END

IF ~Global("LRImpAttacked","GLOBAL",0) InPartySlot(LastTalkedToBy,0) Global("ImpsTalked", "GLOBAL", 1)~ THEN BEGIN DI6
   SAY @12
   IF ~PartyHasItem("gemh1") PartyHasItem("waterser") !PartyGoldLT(10000)~ THEN REPLY @8 GOTO DI8
   IF ~PartyHasItem("gemh1") PartyHasItem("waterser") !PartyGoldLT(1000) OR(2)
   CheckStatGT(Player1,13,CHR)
   CheckStatGT(Player1,13,WIS)~ THEN REPLY @13 GOTO DI7 // MONEY STUFF, CHECK SUBTRACT
   IF ~~ THEN REPLY @14 EXIT
   IF ~OR(2)!PartyHasItem("gemh1") !PartyHasItem("waterser")~ THEN REPLY @15 EXIT
END

IF ~Global("LRImpAttacked","GLOBAL",0) !InPartySlot(LastTalkedToBy,0) Global("ImpsTalked", "GLOBAL", 1)~ THEN BEGIN DI_NOT_BOSS
   SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DI7
   SAY @17 
   IF ~~ THEN DO ~
   RealSetGlobalTimer("LRElysiumTravel","GLOBAL",40)
   TakePartyGold(1000) 
   GiveItemCreate("chalice2",LastTalkedToBy,3,3,3)
   SetGlobal("ImpsTalked", "GLOBAL", 2) 
   EscapeArea()
   ActionOverride("lrimp2",EscapeArea())~
   UNSOLVED_JOURNAL @18 EXIT
END

IF ~~ THEN BEGIN DI8
   SAY @19
   IF ~~ THEN DO ~
   RealSetGlobalTimer("LRElysiumTravel","GLOBAL",40)
   TakePartyGold(10000)
   GiveItemCreate("chalice2",LastTalkedToBy,3,3,3)
   SetGlobal("ImpsTalked", "GLOBAL", 2) 
   EscapeArea()
   ActionOverride("lrimp2",EscapeArea())~
   UNSOLVED_JOURNAL @18 EXIT
END

BEGIN ~BIMP2~

IF ~Global("LRImpAttacked","GLOBAL",0) Global("ImpsTalked", "GLOBAL", 1)~ THEN BEGIN DI_FINALE
  SAY @20
  IF ~~ THEN EXIT
END

CHAIN3 BIMP2 JON_IMPS1
@21
==BIMP1
@22
==BIMP2
@23
==JONEL25J IF ~InParty("lrirenic")~ THEN
@24
END BIMP1 DI2

CHAIN3 LRABAIA BEB_IMPS1
@25
END BIMP1 DI4
