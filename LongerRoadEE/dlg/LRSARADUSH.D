//LR SARADUSH IS A BANTER FILE FOR SARADUSH ENCOUNTERS

ADD_TRANS_TRIGGER 25SPELL 13 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF01 0 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF02 0 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF03 0 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF01 2 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF01 5 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF05 0 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARELF06 1 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARDW04 1 ~!InParty("lrirenic")~
ADD_TRANS_TRIGGER SARDW05 1 ~!InParty("lrirenic")~

EXTEND_BOTTOM 25SPELL 13
IF ~InParty("lrirenic") Global("lazjon","GLOBAL",0)~ THEN DO ~SetGlobal("lazjon","GLOBAL",1)~ EXTERN JONEL25J JONLAZ
IF ~InParty("lrirenic") Global("lazjon","GLOBAL",1)~ THEN REPLY #73386 DO ~SetGlobal("lazarus","GLOBAL",2)~ GOTO 11
IF ~InParty("lrirenic") Global("lazjon","GLOBAL",1)~ THEN REPLY #73387 GOTO 14
IF ~InParty("lrirenic") Global("lazjon","GLOBAL",1)~ THEN REPLY #73388 GOTO 14
END

EXTEND_BOTTOM SARELF01 0
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",0)~ THEN 
DO ~SetGlobal("elfjon1","GLOBAL",1)~
EXTERN JONEL25J JONELF1
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARELF02 0
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",0)~ THEN 
DO ~SetGlobal("elfjon1","GLOBAL",1)~
EXTERN JONEL25J JONELF1
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARELF03 0
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",0)~ THEN 
DO ~SetGlobal("elfjon1","GLOBAL",1)~
EXTERN JONEL25J JONELF1
IF ~InParty("lrirenic") Global("elfjon1","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARELF01 2
IF ~InParty("lrirenic") Global("elfjon2","GLOBAL",0)~ THEN
DO ~SetGlobal("elfjon2","GLOBAL",1)~
EXTERN JONEL25J JONELF2
IF ~InParty("lrirenic") Global("elfjon2","GLOBAL",1)~ THEN REPLY #73358 GOTO 3
IF ~InParty("lrirenic") Global("elfjon2","GLOBAL",1)~ THEN REPLY #73359 GOTO 3
IF ~InParty("lrirenic") Global("elfjon2","GLOBAL",1) Global("elfsanctuary","GLOBAL",2)~ THEN REPLY #73362 GOTO 4
END

EXTEND_BOTTOM SARELF01 5
IF ~InParty("lrirenic") Global("elfjon3","GLOBAL",0)~ THEN
DO ~SetGlobal("elfjon3","GLOBAL",1)~
EXTERN JONEL25J JONELF3
IF ~InParty("lrirenic") Global("elfjon3","GLOBAL",1)~ THEN
EXIT
IF ~InParty("lrirenic") Global("elfjon3","GLOBAL",1) Global("elfsanctuary","GLOBAL",2)~ THEN GOTO 6
END

EXTEND_BOTTOM SARELF05 0
IF ~InParty("lrirenic") Global("elfjon4","GLOBAL",0)~ THEN
DO ~SetGlobal("elfjon4","GLOBAL",1)~
EXTERN JONEL25J JONELF4
IF ~InParty("lrirenic") Global("elfjon4","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARELF06 1
IF ~InParty("lrirenic") Global("elfjon4","GLOBAL",0)~ THEN
DO ~SetGlobal("elfjon4","GLOBAL",1)~
EXTERN JONEL25J JONELF4
IF ~InParty("lrirenic") Global("elfjon4","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARDW04 1
IF ~InParty("lrirenic") Global("dwjon1","GLOBAL",0)~ THEN
DO ~SetGlobal("dwjon1","GLOBAL",1)~
EXTERN JONEL25J JONDW1
IF ~InParty("lrirenic") Global("dwjon1","GLOBAL",1)~ THEN
EXIT
END

EXTEND_BOTTOM SARDW05 1
IF ~InParty("lrirenic") Global("dwjon2","GLOBAL",0)~ THEN
DO ~SetGlobal("dwjon2","GLOBAL",1)~
EXTERN JONEL25J JONDW2
IF ~InParty("lrirenic") Global("dwjon2","GLOBAL",1)~ THEN
EXIT
END




