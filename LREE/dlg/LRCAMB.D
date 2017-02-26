//LRCAMB

REPLACE  GORCAMB

IF ~~ THEN BEGIN 31
  SAY @0
  IF ~~ THEN REPLY #63682 /* ~I'm not ready to play just yet.~ */ DO ~SetGlobal("CambionWager","GLOBAL",0)
SetGlobal("PlayerWager","GLOBAL",0)~ GOTO 26
  IF ~Global("Item1","GLOBAL",0)~ THEN REPLY #63683 /* ~I will play for the Spectral Brand.~ */ DO ~SetGlobal("CambionWager","GLOBAL",1)~ GOTO 32
  IF ~Global("Item2","GLOBAL",0)~ THEN REPLY #63684 /* ~I will play for the Scroll of Wish.~ */ DO ~SetGlobal("CambionWager","GLOBAL",2)~ GOTO 32
  IF ~Global("Item3","GLOBAL",0) InParty("lrirenic")~ THEN REPLY @1 DO ~SetGlobal("CambionWager","GLOBAL",4)~ GOTO 32
  IF ~Global("PlayerWager","GLOBAL",3)~ THEN REPLY #63685 /* ~I will play for the gem.~ */ DO ~SetGlobal("CambionWager","GLOBAL",3)~ GOTO 32
END

IF ~~ THEN BEGIN 50
  SAY #63710 /* ~The card you drew is of a higher suit than mine, however.  You have won the draw!~ */
  IF ~Global("CambionWager","GLOBAL",1)~ THEN DO ~TriggerActivation("Tran3014",TRUE)
TriggerActivation("Tran3016",TRUE)
AddXP2DA("PLOT2A")~ GOTO 56
  IF ~Global("CambionWager","GLOBAL",2)~ THEN DO ~TriggerActivation("Tran3014",TRUE)
TriggerActivation("Tran3016",TRUE)
AddXP2DA("PLOT2A")~ GOTO 57
  IF ~Global("CambionWager","GLOBAL",3)~ THEN DO ~TriggerActivation("Tran3014",TRUE)
TriggerActivation("Tran3016",TRUE)
AddXP2DA("PLOT2A")~ GOTO 58
  IF ~Global("CambionWager","GLOBAL",4)~ THEN DO ~TriggerActivation("Tran3014",TRUE)
TriggerActivation("Tran3016",TRUE)
AddXP2DA("PLOT2A")~ GOTO LRCAMB_HARM
END

IF ~~ THEN BEGIN 53
  SAY #63713 /* ~I have won my freedom!  The way out of here is mine!   You may have the gem, regardless...it means nothing to me, now.  May I have my prize?~ */
  IF ~OR(2)
  PartyHasItem("gemh1")
  !InParty("lrirenic")~ THEN REPLY #63714 /* ~So long as I get it back, here you go.~ */ GOTO 54
  IF ~!PartyHasItem("gemh1") InParty("lrirenic")~ THEN REPLY @2 DO ~GiveItemCreate("gemh1",LastTalkedToBy,0,0,0)~ GOTO LRCAMB_HARM1
  IF ~OR(2)
  PartyHasItem("gemh1")
  !InParty("lrirenic")~ THEN REPLY #63715 /* ~Forget it!  No doubt you'll leave me here, trapped!~ */ GOTO 55
END

IF ~~ THEN BEGIN 58
  SAY @3
  IF ~!PartyHasItem("gemh1") InParty("lrirenic")~ THEN DO ~GiveItemCreate("gemh1",LastTalkedToBy,0,0,0) GiveItem("PLOT02e",LastTalkedToBy)~ GOTO 59
  IF ~OR(2)
  PartyHasItem("gemh1")
  !InParty("lrirenic")~ THEN DO ~GiveItemCreate("COMPON14",LastTalkedToBy,0,0,0) GiveItem("PLOT02e",LastTalkedToBy)~ GOTO 59
END
END

APPEND GORCAMB
IF ~~ THEN BEGIN LRCAMB_HARM
  SAY @4
  IF ~~ THEN DO  ~SetGlobal("DrawEffect","GLOBAL",0)
SetGlobal("Item3","GLOBAL",1)
SetGlobal("CambionWager","GLOBAL",0)
SetGlobal("PlayerWager","GLOBAL",0)
GiveItemCreate("gemh1",LastTalkedToBy,0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN LRCAMB_HARM1
  SAY @5
    IF ~~ THEN REPLY #63714 /* ~So long as I get it back, here you go.~ */ GOTO 54
    IF ~~ THEN REPLY #63715 /* ~Forget it!  No doubt you'll leave me here, trapped!~ */ GOTO 55
END
END


