BEGIN LRGAR

IF ~Global("AbaiaGarTalk","GLOBAL",1)~ THEN BEGIN LRGAR1
   SAY @0
   IF ~~ THEN DO ~SetGlobal("AbaiaGarTalk","GLOBAL",2)~ EXTERN LRABAIA LRGAR_AB1
END

IF ~~ THEN BEGIN LRGAR2
   SAY @1
   IF ~~ THEN REPLY @2 GOTO LRGAR3
   IF ~~ THEN REPLY @3 GOTO LRGAR3
END

IF ~~ THEN BEGIN LRGAR3
   SAY @4
   IF ~~ THEN EXTERN JONEL25J LRGAR_JON1
END

IF ~~ THEN BEGIN LRGAR4
   SAY @5
   IF ~~ THEN REPLY @6 GOTO LRGAR5
   IF ~~ THEN REPLY @7 GOTO LRGAR5
   IF ~~ THEN REPLY @8 GOTO LRGAR5
END

IF ~~ THEN BEGIN LRGAR5
   SAY @9
   IF ~~ THEN REPLY @10 DO ~Enemy() DisplayString(Myself,25942)
    SetGlobal("Control","LOCALS",2)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_DIVINATION)
    DisplayString(Myself,39968)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_ABJURATION)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
    SetGlobalTimer("Immunity","LOCALS",84)
    SetGlobalTimer("PotionDrunk","LOCALS",6)
    UseItem("POTN10",Myself)
    DisplayString(Myself,46150)~ EXIT
   IF ~~ THEN REPLY @11 GOTO LRGAR6
   IF ~~ THEN REPLY @12 DO ~SetGlobal("AbaiaGarSell","GLOBAL",1)~ GOTO GOOD_NPC_YG
   IF ~~ THEN REPLY @13 GOTO LRGAR7
END

IF ~~ THEN BEGIN LRGAR6
   SAY @14
   IF ~~ THEN REPLY @15 DO ~Enemy() DisplayString(Myself,25942)
    SetGlobal("Control","LOCALS",2)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_DIVINATION)
    DisplayString(Myself,39968)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_ABJURATION)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
    SetGlobalTimer("Immunity","LOCALS",84)
    SetGlobalTimer("PotionDrunk","LOCALS",6)
    UseItem("POTN10",Myself)
    DisplayString(Myself,46150)~ EXIT
   IF ~~ THEN REPLY @16 DO ~Enemy() DisplayString(Myself,25942)
    SetGlobal("Control","LOCALS",2)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_DIVINATION)
    DisplayString(Myself,39968)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_ABJURATION)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
    SetGlobalTimer("Immunity","LOCALS",84)
    SetGlobalTimer("PotionDrunk","LOCALS",6)
    UseItem("POTN10",Myself)
    DisplayString(Myself,46150)~ EXIT
   IF ~~ THEN REPLY @12 GOTO GOOD_NPC_YG
   IF ~~ THEN REPLY @17 GOTO LRGAR7
END

IF ~~ THEN BEGIN LRGAR7
   SAY @18
   IF ~~ THEN REPLY @19 GOTO GOOD_NPC_YG
   IF ~~ THEN REPLY @20 DO ~Enemy() DisplayString(Myself,25942)
    SetGlobal("Control","LOCALS",2)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_DIVINATION)
    DisplayString(Myself,39968)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_ABJURATION)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
    SetGlobalTimer("Immunity","LOCALS",84)
    SetGlobalTimer("PotionDrunk","LOCALS",6)
    UseItem("POTN10",Myself)
    DisplayString(Myself,46150)~ EXIT
   IF ~!PartyGoldLT(20000)~ THEN REPLY @21 GOTO LRGAR8
   IF ~CheckStatGT(Player1,13,CHR) !PartyGoldLT(10000)~ THEN REPLY @22 GOTO LRGAR8a
END

IF ~~ THEN BEGIN LRGAR8a
   SAY @23
   IF ~!LevelGT(LastTalkedToBy,12)~ THEN DO ~TakePartyGold(10000)~ GOTO LRGAR9
   IF ~LevelGT(LastTalkedToBy,12)~ THEN DO ~TakePartyGold(10000) SetGlobal("AbaiaGarBuy","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN LRGAR8
   SAY @23
   IF ~!LevelGT(LastTalkedToBy,12)~ THEN DO ~TakePartyGold(20000)~ GOTO LRGAR9
   IF ~LevelGT(LastTalkedToBy,12)~ THEN DO ~TakePartyGold(20000) SetGlobal("AbaiaGarBuy","GLOBAL",1) EscapeArea() Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN LRGAR9
   SAY @24
   IF ~~ THEN DO ~Enemy() DisplayString(Myself,25942)
    SetGlobal("Control","LOCALS",2)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_DIVINATION)
    DisplayString(Myself,39968)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
    ApplySpell(Myself,WIZARD_SPELL_IMMUNITY_ABJURATION)
    ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_ENERGY)
    SetGlobalTimer("Immunity","LOCALS",84)
    SetGlobalTimer("PotionDrunk","LOCALS",6)
    UseItem("POTN10",Myself)
    DisplayString(Myself,46150)    ~ EXIT
END

APPEND LRABAIA 

IF ~~ THEN BEGIN LRGAR_AB1
  SAY @25
  IF ~~ THEN EXTERN LRGAR LRGAR2
END
END

APPEND JONEL25J

IF ~~ THEN BEGIN LRGAR_JON1
 SAY @26
 IF ~~ THEN REPLY @27 GOTO LRGAR_JON2
 IF ~~ THEN REPLY @28 GOTO LRGAR_JON2
END

IF ~~ THEN BEGIN JON_DEVA_SOLD
   SAY @29
   IF ~~ THEN
//ERASE JOURNAL
JOURNAL @30
EXIT
END

END // end of append

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~CHAINS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
CHAIN JONEL25J LRGAR_JON2
@31
== LRGAR
@32
END LRGAR LRGAR4

CHAIN LRGAR GOOD_NPC_YG
@33
DO ~GiveItemCreate("hellbow",LastTalkedToBy,0,0,0) SetGlobal("AbaiaGarSell","GLOBAL",1) ActionOverride("Abaia",Enemy()) Attack("abaia")~
== MAZZY25J IF ~InParty("Mazzy")~ THEN
@34
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== VALYG25J IF ~InParty("Valygar")~ THEN
@35
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== MINSC25J IF ~InParty("Minsc")~ THEN
@36
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== KELDO25J IF ~InParty("Keldorn")~ THEN
@37
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== JAHEI25J IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@38
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== ANOME25J IF ~InParty("Anomen") Alignment("Anomen",MASK_GOOD)~ THEN
@39
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== AERIE25J IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN
@40
DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~
== NALIA25J IF ~InParty("Nalia")~ THEN
@41
== IMOEN25J IF ~InPArty("Imoen2")~ THEN
@42
EXTERN JONEL25J JON_DEVA_SOLD


