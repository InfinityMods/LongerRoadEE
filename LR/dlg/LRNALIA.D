//NALIA VS IRENICUS BANTERS

APPEND BNALIA25

IF ~InParty("lrirenic")
See("lrirenic")
!StateCheck("lrirenic",STATE_SLEEPING)
Global("LRJonNally","GLOBAL",0)~ THEN BEGIN BJNAL1
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("LRJonNally","GLOBAL",1)~ EXTERN BJONEL25 JON_NAL1
END
END //APPEND NALIA

APPEND BJONEL25

IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("LRJonNally","GLOBAL",1)~ THEN BEGIN BJNAL2
   SAY @1 
   IF ~~ THEN DO ~SetGlobal("LRJonNally","GLOBAL",2)~ EXTERN BNALIA25 JON_NAL2
END
END //APPEND JON

//CHAINS

CHAIN BJONEL25 JON_NAL1
@2   
== BNALIA25
@3
== BJONEL25
@4
=
@5
=
@6
== BNALIA25
@7
== BJONEL25
@8
EXIT

CHAIN BNALIA25 JON_NAL2
@9 
== BJONEL25
@10
== BNALIA25
@11
== BJONEL25 IF ~!Global("JonUndecided","GLOBAL",2)~ THEN 
@12
== BJONEL25 IF ~Global("JonUndecided","GLOBAL",2)~ THEN
@13
== BNALIA25
@14
== BJONEL25 IF ~!Global("JonUndecided","GLOBAL",2)~ THEN
@15
== BJONEL25 IF ~Global("JonUndecided","GLOBAL",2)~ THEN
@16
== BJONEL25 IF ~~ THEN
@17
== BNALIA25
@18
== BVALYG25 IF ~InParty("Valygar")~ THEN
@19
== BJONEL25
@20
== BNALIA25
@21
== BJONEL25
@22
EXIT

