//JAHEIRA VS JON

ADD_STATE_TRIGGER BJAHEI25 29 ~!Global("JaeIsMad","GLOBAL",1)~

APPEND BJONEL25

IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JaeVsJon","GLOBAL",2)~ THEN BEGIN BJJAH1
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("JaeVsJon","GLOBAL",3)~ EXTERN BJAHEI25 JON_JAH1
END
END

CHAIN BJAHEI25 JON_JAH1
@1
=
@2
== BJONEL25
@3
== BJAHEI25
@4
== BJONEL25
@5
== BJAHEI25
@6
== BJONEL25
@7
== BJAHEI25
@8
== BJONEL25
@9
== BJAHEI25
@10
== BJONEL25 IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@11
== BJONEL25 IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@12
== BJAHEI25 IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@13
== BJONEL25 IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@14
== BJONEL25 IF ~!Alignment(Player1,MASK_EVIL)~ THEN
@15
== BJONEL25 IF ~Alignment(Player1,MASK_EVIL)~ THEN
@16
== BJONEL25 IF ~~ THEN
@17
== BJAHEI25
@18
== BJONEL25
@19
== BJAHEI25
@20
== BJONEL25
@21 
DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",500)~
EXIT
