/////////////////////////////////////////////////////////
//                                                     //
//  VICONIA BANTER WITH JON                            //
/////////////////////////////////////////////////////////

REPLACE_SAY BVICON25 42
@0


SET_WEIGHT BVICON25 8   #10
SET_WEIGHT BVICON25 9   #11
SET_WEIGHT BVICON25 10  #12
SET_WEIGHT BVICON25 11  #13
SET_WEIGHT BVICON25 12  #14
SET_WEIGHT BVICON25 13  #15
SET_WEIGHT BVICON25 14  #16


APPEND BVICON25

IF WEIGHT #8 ~InParty("lrirenic")
See("lrirenic")
!StateCheck("lrirenic",STATE_SLEEPING)
Global("JonvsVicky1","LOCALS",0)
~ BEGIN BVJ11
   SAY @1 
   IF ~~ THEN DO ~SetGlobal("JonvsVicky1","LOCALS",1)~ EXTERN BJONEL25 JON_VIC1
END

IF WEIGHT #9 ~InParty("lrirenic")
See("lrirenic")
!StateCheck("lrirenic",STATE_SLEEPING)
Global("JonvsVicky2","LOCALS",0)~ BEGIN BVJ21
   SAY @2 
   IF ~~ THEN DO ~SetGlobal("JonvsVicky2","LOCALS",1)~ EXTERN BJONEL25 JON_VIC2
END
END

CHAIN BJONEL25 JON_VIC1
@3 
==BVICON25
@4 
==BVICON25
@5
==BJONEL25
@6
==BVICON25 IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@7
==BVICON25 IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@8
==BJONEL25 IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@9
==BVICON25 IF ~!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@10
==BJONEL25 IF ~!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@11
==BVICON25
@12
EXIT

CHAIN BJONEL25 JON_VIC2
@13   
==BVICON25
@14
==BMINSC25 IF ~InParty("Minsc")~ THEN
@15
==BJONEL25
@16
==BVICON25
@17
==BJONEL25
@18
==BVICON25
@19
==BJONEL25
@20
==BVICON25
@21
==BJONEL25
@22
==BVICON25
@23
==BJONEL25
@24
==BVICON25
@25
EXIT





