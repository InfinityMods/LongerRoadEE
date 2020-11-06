APPEND BJONEL25


//The 1 Keldorn Banter
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("LRJonKeldorn","LOCALS",0)~ THEN BEGIN BJKL1
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("LRJonKeldorn","LOCALS",1)~ EXTERN BKELDO25 JON_KELDORN1
END
END

CHAIN BKELDO25 JON_KELDORN1
@1 
==BJONEL25
@2
==BKELDO25
@3
==BJONEL25
@4
EXIT

//The 2 Keldorn Banter

CHAIN
IF ~See("Keldorn")
InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("LRJonKeldorn","LOCALS",1)~ THEN BJONEL25 JON_KELDORN2
  @5 
     DO ~SetGlobal("LRJonKeldorn","LOCALS",2)~
 == BKELDO25
  @6 
 == BJONEL25
  @7
 == BKELDO25
  @8
 =
  @9
 == BJONEL25
  @10
 == BKELDO25
  @11
 == BJONEL25
  @12
 == BKELDO25
  @13
 =
  @14
 == BJONEL25
  @15
 == BKELDO25
  @16
 == BJONEL25
  @17
EXIT

