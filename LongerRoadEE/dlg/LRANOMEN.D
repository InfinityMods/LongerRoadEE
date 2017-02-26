APPEND BJONEL25

IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("LRJonAno","GLOBAL",0)~ THEN BEGIN BJAN1
   SAY @0  
   IF ~~ THEN DO ~SetGlobal("LRJonAno","GLOBAL",1)~ EXTERN BANOME25 JON_ANO1
END

IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("LRJonAno","GLOBAL",1) Global("SaradushSacked","GLOBAL",1)~ THEN BEGIN BJAN2
   SAY @1  
   IF ~~ THEN DO ~SetGlobal("LRJonAno","GLOBAL",2)~ EXTERN BANOME25 JON_ANO2
END
END // END APPEND JON

CHAIN BANOME25 JON_ANO1
@2 
== BJONEL25
@3
== BANOME25
@4
== BJONEL25
@5
== BANOME25 IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@6
== BANOME25 IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@7
== BJONEL25
@8
EXIT

CHAIN BANOME25 JON_ANO2
@9 
== BJONEL25
@10
== BANOME25 IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@11
== BANOME25 IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@12
== BJONEL25
@13
== BANOME25
@14
== BJONEL25
@15
== BANOME25 IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@16
== BJONEL25 IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@17
== BANOME25 IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@18
EXIT

