APPEND JAHEI25J

IF ~InParty("LRIRENIC") Global("JaeIsMad","GLOBAL",1) Global("AgreedToGiveSoul","GLOBAL",0)~ THEN BEGIN LRJAH1
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("JaeIsMad","GLOBAL",2)~ GOTO LRJAH2
END

IF ~InParty("LRIRENIC") Global("JaeIsMad","GLOBAL",1) !Global("AgreedToGiveSoul","GLOBAL",0)~ THEN BEGIN LRJAH1A
   SAY @1 
   IF ~~ THEN REPLY @2 DO ~SetGlobal("JaeIsMad","GLOBAL",2)~  GOTO LRJAH9
   IF ~~ THEN REPLY @3 DO ~SetGlobal("JaeIsMad","GLOBAL",2)~ EXTERN JONEL25J JON_JAH1
END


IF ~~ THEN BEGIN LRJAH2
   SAY @4
   IF ~~ THEN REPLY @2  GOTO LRJAH9
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @3 EXTERN JONEL25J JON_JAH1
   IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @5 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJAH3
   IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @6 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJAH3
END

IF ~~ THEN BEGIN LRJAH3
   SAY @7
   IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @8 GOTO LRJAH4
   IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @9 GOTO LRJAH4
   IF ~!CheckStatGT(Player1,13,CHR)~ THEN REPLY @10 GOTO LRJAH8
   IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @10 GOTO LRJAH5
END

IF ~~ THEN BEGIN LRJAH4
   SAY @11
   IF ~~ THEN REPLY @12 GOTO LRJAH5
   IF ~~ THEN REPLY @13 GOTO LRJAH8
END

IF ~~ THEN BEGIN LRJAH5
   SAY @14
   IF ~~ THEN REPLY @15 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJAH6
   IF ~~ THEN REPLY @16 GOTO LRJAH11
END

IF ~~ THEN BEGIN LRJAH6
   SAY @17
   IF ~~ THEN REPLY @18 GOTO LRJAH7
   IF ~~ THEN REPLY @19 GOTO LRJAH7A
END

IF ~~ THEN BEGIN LRJAH7
   SAY @20
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LRJAH7A
   SAY @21
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LRJAH8
   SAY @22
   IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN LRJAH9
   SAY @23
   IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN LRJAH10
   SAY @24
   IF ~~ THEN REPLY @25 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ GOTO LRJAH9
   IF ~~ THEN REPLY @26 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ GOTO LRJAH11
   IF ~~ THEN REPLY @27 GOTO LRJAH5
   IF ~~ THEN REPLY @28 GOTO LRJAH12
   IF ~~ THEN REPLY @29 GOTO LRJAH13
END

IF ~~ THEN BEGIN LRJAH11
   SAY @30
   IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT
   IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN  EXIT
END

IF ~~ THEN BEGIN LRJAH12
   SAY @31
   IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN DO ~ SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LRJAH13
   SAY @32
   IF ~~ THEN REPLY @33 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ GOTO LRJAH9
   IF ~~ THEN REPLY @34 DO ~SetGlobal("JonNpcFight","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @35 GOTO LRJAH5
END
END


