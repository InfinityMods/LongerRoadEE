//LRABMOVE

APPEND LRABAIA

IF ~ Global("AbaiaHurt","GLOBAL",0) Global("DevaQuestFailed", "GLOBAL",0) Global("AbaiaIn","GLOBAL",1) InPartySlot(LastTalkedToBy,0) Global("AbaiaAttacked","GLOBAL",0)~ THEN BEGIN LRABAIA_MOVE
     SAY @0
     IF ~~ THEN GOTO LRABAIA_MOVE1
END

IF ~~ THEN BEGIN LRABAIA_MOVE1
  SAY @1
  IF ~~ THEN REPLY @2 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3003",[676.437],0)~ EXIT
  IF ~~ THEN REPLY @3
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3012",[620.466],0)~ EXIT
  IF ~~ THEN REPLY @4
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3013",[620.466],0)~ EXIT
  IF ~~ THEN REPLY @5 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3015",[579.884],0)~ EXIT
  IF ~~ THEN REPLY @6 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3005",[676.437],0)~ EXIT
  IF ~~ THEN REPLY @7 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3006",[676.437],0)~ EXIT
  IF ~~ THEN REPLY @8 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3014",[620.466],0)~ EXIT
  IF ~~ THEN REPLY @9 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3009",[532.391],0)~ EXIT
  IF ~~ THEN REPLY @10 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3008",[532.391],0)~ EXIT
  IF ~~ THEN REPLY @11 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3007",[532.391],0)~ EXIT
  IF ~~ THEN REPLY @12 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3010",[532.391],0)~ EXIT
  IF ~~ THEN REPLY @13 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3011",[620.466],0)~ EXIT
  IF ~~ THEN REPLY @14 
DO ~SetGlobal("AbaiaMove","GLOBAL",1) CreateVisualEffectObject("SPPORTAL",Myself) MoveBetweenAreas("AR3004",[676.437],0)~ EXIT
  IF ~~ THEN REPLY @15 EXIT
END

END
