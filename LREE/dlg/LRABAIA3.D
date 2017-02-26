//ABAIA3

BEGIN LRABAIA3

IF ~Global("LRElysium","GLOBAL",1)~ THEN BEGIN LRABF1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("LRElysium","GLOBAL",2)~ GOTO LRABF3
  IF ~~ THEN REPLY @2 DO ~SetGlobal("LRElysium","GLOBAL",2)~ GOTO LRABF2
END

IF ~~ THEN BEGIN LRABF2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO  LRABF3
  IF ~~ THEN REPLY @5 GOTO LRABF4
END

IF ~~ THEN BEGIN LRABF3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("LRElysium","GLOBAL",3)
StartCutSceneMode()
Wait(1)
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
StartCutScene("elys01")
MoveBetweenAreas("LR6603",[303.556],0)
~ EXIT
END

IF ~~ THEN BEGIN LRABF4
  SAY @7
  IF ~~ THEN GOTO LRABF_CHAIN
END

CHAIN LRABAIA3 LRABF_CHAIN
@8
DO ~SetGlobal("LRElysium","GLOBAL",4) Enemy()~
== MAZZY25J IF ~InParty("Mazzy")~ THEN
@9
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== VALYG25J IF ~InParty("Valygar")~ THEN
@10
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== MINSC25J IF ~InParty("Minsc")~ THEN
@11
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== KELDO25J IF ~InParty("Keldorn")~ THEN
@12
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== JAHEI25J IF ~InParty("Jaheira")~ THEN
@13
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== ANOME25J IF ~InParty("Anomen") Alignment("Anomen",MASK_GOOD)~ THEN
@14
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== AERIE25J IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN
@15
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== NALIA25J IF ~InParty("Nalia")~ THEN
@16
== IMOEN25J IF ~InPArty("Imoen2")~ THEN
@17
EXIT

