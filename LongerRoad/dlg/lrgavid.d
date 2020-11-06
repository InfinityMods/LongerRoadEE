// LRGAVID.d

REPLACE ~CHALSP01~
 
 IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #72720
  IF ~!PartyHasItem("imask")~ THEN DO ~SetGlobal("BeginChallenge1","GLOBAL",11)~ EXIT
  IF ~PartyHasItem("imask")~ THEN DO ~SetGlobalTimer("RielevSpawnTimer","GLOBAL",50) SetGlobal("BeginChallenge1","GLOBAL",11)~ EXIT
END

END

