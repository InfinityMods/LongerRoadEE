//LRSAEMON2    
A_T_T AMSAEMON 13 ~!InParty("lrirenic")~

EXTEND_BOTTOM AMSAEMON 13
+ ~InParty("lrirenic")~ + #71796 + saejonship
END

INTERJECT_COPY_TRANS AMSAEMON 12 lr2saemon1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @0
 == AMSAEMON
  @1
 == JONEL25J
  @2
 == AMSAEMON
  @3
 == JONEL25J
  @4
 == AMSAEMON
  @5
END

INTERJECT_COPY_TRANS AMSAEMON 28 lr2saemon2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @6
 == AMSAEMON
  @7
 == JONEL25J
  @8
 == AMSAEMON
  @9
END

CHAIN AMSAEMON saejonship
  @10
 == JONEL25J
  @11
END ++ @12 EXTERN JONEL25J Noneed
    ++ @13 EXTERN JONEL25J Noneed

CHAIN JONEL25J Noneed
  @14
 == AMSAEMON
  @15
EXTERN AMSAEMON 15
                    


