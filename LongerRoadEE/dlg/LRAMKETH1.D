// lramketh1 -- all the oasis and early amkethran dialogs

CHAIN
IF ~~ THEN AMMERC01 MercShortChain
  @0
 == AMSAEMON
  @1
EXTERN AMMERC01 3

//Marlowe Interjections:

INTERJECT Marlowe 19 lrMarlowe1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @2
END ++ @3 EXTERN MARLOWE 21
    ++ @4 EXTERN MARLOWE 21
    ++ @5 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ EXTERN MARLOWE 21

INTERJECT Marlowe 28 lrMarlowe2
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @6
END ++ @7 DO ~SG("want_to_save_the_girl",1)~ EXTERN JONEL25J JonAmLich1
    ++ @8 EXTERN JONEL25J JonAmLich2
    ++ @9 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1) SG("want_to_save_the_girl",1)~ EXTERN JONEL25J JonAmLich1

INTERJECT_COPY_TRANS AMLICH01 4 lrMarlowe3
 == JONEL25J IF ~InParty("lrirenic") G("want_to_save_the_girl",1)~ THEN
  @10
END

INTERJECT AMLICH01 10 lrMarlowe4
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @11
END ++ @12 EXTERN AMLICH01 11
    ++ @13 EXTERN AMLICH01 11
    
INTERJECT AMLICH01 13 lrMarlowe5
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @14
END + ~GGT("JonRedemptionCounter",0)~ + @15 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ EXTERN AMLICH01 lrLich01
    ++ @16 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ EXTERN AMLICH01 lrLich01
    ++ @17 EXTERN AMLICH01 lrLich01

INTERJECT AMLICH01 14 lrMarlowe5
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @14
END + ~GGT("JonRedemptionCounter",0)~ + @15 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ EXTERN AMLICH01 lrLich01
    ++ @16 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ EXTERN AMLICH01 lrLich01
    ++ @17 EXTERN AMLICH01 lrLich01

// Everyone's favourite Swashbuckler/Mage

INTERJECT AMSAEMON 4 lrSaemon1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @18
 == AMSAEMON
  @19
 == JONEL25J
  @20
 == AMSAEMON
  @21
 == JONEL25J
  @22
 == AMSAEMON
  @23
 == JONEL25J
  @24
 == AMSAEMON
  @25
END ++ @26 EXTERN Ammerc01 MercShortChain
    ++ @27 EXTERN Ammerc01 MercShortChain

INTERJECT_COPY_TRANS AMSAEMON 7 lrSaemon2 //This doesn't really make any sense in my opinion.. perhaps I misunderstood it's location or something..
 == AMSAEMON IF ~InParty("lrirenic")~ THEN
  @28
END

//Balthazar meeting in Amkethran:
INTERJECT_COPY_TRANS Balth 1 lrBalth1
 == JONEL25J IF ~InParty("lrirenic")~ THEN
  @29
   DO ~SetGlobal("lrjonafterbalth","LOCALS",1)~
END

//The Appends
APPEND JONEL25J

IF ~Global("lrjonabandonmalla","LOCALS",1)~ lrabandonMalla
  SAY @30
  IF ~~ DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000) SG("JonUndecided",3) SetGlobal("lrjonabandonmalla","LOCALS",2)~ EXIT
END

IF ~Global("lrmarlowedeadment","LOCALS",1)~ lrmarlowedead
  SAY @31
  IF ~~ DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000) SG("JonUndecided",3) SetGlobal("lrmarlowedeadment","LOCALS",2)~ EXIT
END

IF ~Global("lrkeptmallasoul","LOCALS",1)~ lrkeptmallasoul
  SAY @32
  IF ~~ DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000) SG("JonUndecided",3) SetGlobal("lrkeptmallasoul","LOCALS",2)~ EXIT
END

IF ~Global("lrjonafterbalth","LOCALS",2)~ AfterBalth
  SAY @33
    ++ @34 + lrTheory
    ++ @35 + lrTheory
END

IF ~~ lrTheory
  SAY @36
  IF ~~ DO ~SetGlobal("lrjonafterbalth","LOCALS",3)~ EXIT
END

IF ~~ JonAmLich1
  SAY @37
  COPY_TRANS Marlowe 28
END

IF ~~ JonAmLich2
  SAY @38
  COPY_TRANS Marlowe 28
END
END

APPEND AMLICH01
IF ~~ lrLich01
  SAY @39
  COPY_TRANS AMLICH01 13
END
END

REPLACE MARLOWE
IF ~~ THEN BEGIN 50
  SAY #73703 
  IF ~~ THEN REPLY #73705 DO ~AddXP2DA("PLOT14A")
ReputationInc(1) SetGlobal("MallaCured","GLOBAL",1)~ GOTO 51
  IF ~~ THEN REPLY #73706 DO ~AddXP2DA("PLOT14A")
ReputationInc(1) SetGlobal("MallaCured","GLOBAL",1)~ GOTO 51
  IF ~~ THEN REPLY #73707 GOTO 52
  IF ~~ THEN REPLY #73708 GOTO 52
END
END



