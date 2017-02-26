//LRENCLAVES
//The Inside Abzi's and Sen's dungeon dialogues.
//It's pretty much just INTERJECT's all the way through.
//EXCEPT THAT THEY CAUSED FEW FUNNY BUGS D.

/* INTERJECT_COPY_TRANS SENGUA01 16 lrSenGuar01
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @0
END

INTERJECT_COPY_TRANS SENGUA01 19 lrSenGuar01
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @1
END  */

ADD_TRANS_TRIGGER SENGUA01 16 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SENGUA01 19 ~!InParty("lrirenic")~

ADD_TRANS_TRIGGER BAZMONK 3 ~!InParty("lrirenic")~

EXTEND_BOTTOM SENGUA01 16
IF ~InParty("lrirenic") Global("LRDROW1","AR6100",0)~ THEN 
DO ~SetGlobal("LRDROW1","AR6100",1)~
EXTERN JONEL25J LRDROW1
END

EXTEND_BOTTOM SENGUA01 19
IF ~InParty("lrirenic") Global("LRDROW2","AR6100",0)~ THEN 
DO ~SetGlobal("LRDROW2","AR6100",1)~
EXTERN JONEL25J LRDROW2
END

EXTEND_BOTTOM BAZMONK 3
IF ~InParty("lrirenic") Global("LRBMONK","AR6002",0)~ THEN
DO ~SetGlobal("LRBMONK","AR6002",1)~
EXTERN JONEL25J LRBZMONK
END

APPEND JONEL25J

IF ~~ THEN BEGIN LRDROW1
SAY @0
  IF ~~ THEN DO ~ActionOverride("sengua01",Enemy())
SetGlobal("DrowRevealed","AR6100",1)
EraseJournalEntry(67464)~ EXIT
END

IF ~~ THEN BEGIN LRDROW2
SAY @1
  IF ~~ THEN DO ~ActionOverride("sengua01",Enemy())
SetGlobal("DrowRevealed","AR6100",1)
EraseJournalEntry(67464)~ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN LRBZMONK
SAY @9
  IF ~~ THEN DO ~ActionOverride("bazmonk",Kill(Myself))~ EXIT
  IF ~IsValidForPartyDialog("Sarevok")~ THEN DO ~ActionOverride("bazmonk",Kill(Myself))~ EXTERN ~SAREV25J~ 9
  IF ~IsValidForPartyDialog("Imoen2")~ THEN DO ~ActionOverride("bazmonk",Kill(Myself))~ EXTERN ~IMOEN25J~ 22
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~ActionOverride("bazmonk",Kill(Myself))~ EXTERN ~VICON25J~ 20
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~ActionOverride("bazmonk",Kill(Myself))~ EXTERN ~AERIE25J~ 22
END
END

INTERJECT SENBEH01 3 lrSenBeh01
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @2
END  ++ @3 EXTERN JONEL25J Geas
     ++ @4 EXTERN JONEL25J Geas
     ++ @5 EXTERN JONEL25J Geas
     ++ @6 DO
~IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~ EXTERN
SENGUA03 3

INTERJECT BAZMONK 11 lrBazMonk1
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @7
END  ++ @8 EXTERN JONEL25J CopyScroll

/*INTERJECT_COPY_TRANS BAZMONK 3 lrBazMonk2
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @9
END */



INTERJECT_COPY_TRANS BAZDRA03 0 lrBazDra1
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @10
END

INTERJECT_COPY_TRANS BAZDRA03 5 lrBazDra2
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @11
END

APPEND JONEL25J
IF ~~ Geas
  SAY @12
  IF ~~ THEN EXTERN ~SENGUA03~ 4
END

IF ~~ CopyScroll
  SAY @13
  IF ~~ EXTERN BAZMONK 12
END
END

INTERJECT_COPY_TRANS BAZDRA01 2 lrComicRelief
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @14
  =
   @15
    == IMOEN25J IF ~InParty("Imoen2")~ THEN
     @16
    == JAN25J IF ~InParty("Jan")~ THEN
     @17
    =
     @18
    =
     @19
    == JONEL25J IF ~InParty("Jan")~ THEN
     @20
    == JAN25J IF ~InParty("Jan")~ THEN
     @21
  == BAZDRA01
   @22
END       

INTERJECT_COPY_TRANS AMELM01 7 lrElminster1
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @23
  == AMELM01
   @24
  =
   @25
END

INTERJECT_COPY_TRANS AMELM01 9 lrElminster2
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @26
    == JAHEI25J IF ~InParty("Jaheira")~ THEN
     @27
    == AMELM01 IF ~InParty("Jaheira")~ THEN
     @28
    == JAHEI25J IF ~InParty("Jaheira")~ THEN 
     @29
  == AMELM01
   @30
  == JONEL25J
   @31
    == JAHEI25J IF ~InParty("Jaheira")~ THEN
     @32
    == IMOEN25J IF ~InParty("Imoen2")~ THEN
     @33
  == AMELM01
   @34
END

INTERJECT_COPY_TRANS AMELM01 10 lrElminster2
  == JONEL25J IF ~InParty("lrirenic")~ THEN
   @26
    == JAHEI25J IF ~InParty("Jaheira")~ THEN
     @27
    == AMELM01 IF ~InParty("Jaheira")~ THEN
     @28
    == JAHEI25J IF ~InParty("Jaheira")~ THEN 
     @29
  == AMELM01
   @30
  == JONEL25J
   @31
    == JAHEI25J IF ~InParty("Jaheira")~ THEN
     @32
    == IMOEN25J IF ~InParty("Imoen2")~ THEN
     @33
  == AMELM01
   @34
END



 

