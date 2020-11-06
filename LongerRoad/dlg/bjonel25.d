BEGIN ~BJONEL25~

//////////////////////////////////////////////////
//IRENICUS BANTER DIALOG 1
//////////////////////////////////////////////////

IF ~!NumInPartyGT(2) Global("JonTalk","LOCALS",2)~ THEN BEGIN RD11_ALONE
   SAY @0 
   IF ~~ THEN REPLY @1 GOTO RD13
   IF ~~ THEN REPLY @2 GOTO RD13
   IF ~~ THEN REPLY @3 GOTO RD13
   IF ~~ THEN REPLY @4 GOTO RD12
   IF ~~ THEN REPLY @5 GOTO RD13
END

IF ~NumInPartyGT(2) Global("JonTalk","LOCALS",2)~ THEN BEGIN RD11
   SAY @6 
   IF ~~ THEN REPLY @1 GOTO RD13
   IF ~~ THEN REPLY @2 GOTO RD13
   IF ~~ THEN REPLY @3 GOTO RD13
   IF ~~ THEN REPLY @4 GOTO RD12
   IF ~~ THEN REPLY @5 GOTO RD13
END

IF ~~ THEN BEGIN RD12
   SAY @7
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ EXIT 
END

IF ~~ THEN BEGIN RD13
   SAY @8
   IF ~~ THEN REPLY @9 GOTO RD14A
   IF ~~ THEN REPLY @10 GOTO RD12
   IF ~~ THEN REPLY @11 GOTO RD14A
   IF ~~ THEN REPLY @12 GOTO RD14A
   IF ~~ THEN REPLY @13 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-5)~ GOTO RD14B
END

IF ~~ THEN BEGIN RD14A
   SAY @14
  IF ~~ THEN GOTO SLAYER
END

IF ~~ THEN BEGIN RD14B
   SAY @15
  IF ~~ THEN GOTO SLAYER
END

IF ~~ THEN BEGIN RD15
   SAY @16
   IF ~~ THEN REPLY @17 GOTO RD16
   IF ~~ THEN REPLY @18 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO RD16
   IF ~~ THEN REPLY @19 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-5)~ GOTO RD17
END

IF ~~ THEN BEGIN RD16
   SAY @20
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD17
   SAY @21
   IF ~~ THEN EXIT
END

//////////////////////////////////////////
/// IRENICUS BANTER DIALOG 2
//////////////////////////////////////////

IF ~!NumInPartyGT(2) Global("JonTalk","LOCALS",4)~ THEN BEGIN RD21_ALONE
   SAY @22 
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD24
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD24
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @25 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @25 GOTO RD24
   IF ~~ THEN REPLY @26 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD22
END

IF ~NumInPartyGT(2) Global("JonTalk","LOCALS",4)~ THEN BEGIN RD21
   SAY @27
   IF ~!InParty("Imoen2") !Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD23
   IF ~!InParty("Imoen2") Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD24
   IF ~!InParty("Imoen2") !Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD23
   IF ~!InParty("Imoen2") Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD24
   IF ~!InParty("Imoen2") !Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @28 GOTO RD23
   IF ~!InParty("Imoen2") Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @28 GOTO RD24
   IF ~!InParty("Imoen2")~ THEN REPLY @26 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD22
   IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ IMOEN_JON21
END

IF ~~ THEN BEGIN RD21A
   SAY @29
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @23 GOTO RD24
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @24 GOTO RD24
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @28 GOTO RD23
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @28 GOTO RD24
   IF ~~ THEN REPLY @26 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD22
END

IF ~~ THEN BEGIN RD22
   SAY @30
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD23
   SAY @31
   IF ~~ THEN REPLY @32 GOTO RD28
   IF ~~ THEN REPLY @33 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1)~ GOTO RD28
   IF ~~ THEN REPLY @34 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -10)~ GOTO RD27
   IF ~~ THEN REPLY @35 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -5)~  GOTO RD26
END

IF ~~ THEN BEGIN RD24
   SAY @36
   IF ~~ THEN REPLY @37 GOTO RD28
   IF ~~ THEN REPLY @38 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1)~ GOTO RD28
   IF ~~ THEN REPLY @39 GOTO RD28
   IF ~~ THEN REPLY @40 GOTO RD25
END

IF ~~ THEN BEGIN RD25
    SAY @41
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD26
   SAY @42
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD27
   SAY @43
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD28
   SAY @44
   IF ~~ THEN GOTO RD29
END

IF ~~ THEN BEGIN RD29
   SAY @45
   IF ~~ THEN REPLY @46 GOTO RD210
   IF ~~ THEN REPLY @47 GOTO RD210
   IF ~~ THEN REPLY @48 GOTO RD210
END

IF ~~ THEN BEGIN RD210
   SAY @49
   IF ~~ THEN REPLY @50 GOTO RD211
   IF ~~ THEN REPLY @51 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO RD212
   IF ~~ THEN REPLY @52DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD22
END

IF ~~ THEN BEGIN RD211
   SAY @53
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD212
   SAY @54
   IF ~~ THEN GOTO RD213
END

IF ~~ THEN BEGIN RD213
   SAY @55
   IF ~!InParty("Imoen2")~ THEN GOTO RD214
   IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ IMOEN_JON22
END

IF ~~ THEN BEGIN RD214
   SAY @56
   IF ~~ THEN EXIT
END


//////////////////////////////////////////
/// IRENICUS BANTER DIALOG 3
//////////////////////////////////////////

IF ~Global("JonTalk","LOCALS",6)~ THEN BEGIN RD31
   SAY @57 
   IF ~~ THEN REPLY @58 GOTO RD33
   IF ~~ THEN REPLY @59 GOTO RD32
   IF ~~ THEN REPLY @60 GOTO RD33
   IF ~~ THEN REPLY @61 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD33
   IF ~CheckStatGT(Player1,10,INT)~ THEN REPLY @62 GOTO RD34
END

IF ~~ THEN BEGIN RD32
   SAY @63
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD33
   SAY @64
   IF ~CheckStatGT(Player1,10,INT)~ THEN REPLY @65 GOTO RD35
   IF ~CheckStatGT(Player1,10,INT)~ THEN REPLY @66 GOTO RD35
   IF ~~ THEN REPLY @67 GOTO RD35
   IF ~~ THEN REPLY @68 GOTO RD34
END

IF ~~ THEN BEGIN RD34
   SAY @69
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-50) SetGlobal("JonPath","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN RD35
   SAY @70
   IF ~~ THEN GOTO SOULTALK
END

IF ~~ THEN BEGIN RD37
   SAY @71
   IF ~~ THEN REPLY @72 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1)~ GOTO RD38
   IF ~~ THEN REPLY @73 GOTO RD38
   IF ~~ THEN REPLY @74 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD39
   IF ~~ THEN REPLY @75 GOTO RD38
END

IF ~~ THEN BEGIN RD38
   SAY @76
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @77 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",3)~ GOTO RD310
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @78 GOTO RD39
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @78 GOTO RD39A
   IF ~~ THEN REPLY @79 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",3)~ GOTO RD310
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0) Global("IQTEST","GLOBAL",2)~ THEN REPLY @80 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-20)~ GOTO RD39
   IF ~Global("AgreedToGiveSoul","GLOBAL",0) Global("IQTEST","GLOBAL",2)~ THEN REPLY @80 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-20)~ GOTO RD39A
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @81 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD39
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @81 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ GOTO RD39A
END

IF ~~ THEN BEGIN RD39
   SAY @82
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD39A
   SAY @83
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD310
   SAY @84
   IF ~~ THEN EXIT
END


//////////////////////////////////////////////////////////////////
///////// IRENICUS BANTER DIALOG 4
//////////////////////////////////////////////////////////////////

IF ~Global("JonTalk","LOCALS",8)~ THEN BEGIN RD41
   SAY @85 
   IF ~InParty("Imoen2")~ THEN REPLY @86 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-5)~ GOTO RD43
   IF ~!InParty("Imoen2")~ THEN REPLY @86 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-5)~  GOTO RD43A
   IF ~InParty("Imoen2") Alignment("Player1",MASK_GOOD)~ THEN REPLY @87 GOTO RD43
   IF ~!InParty("Imoen2") Alignment("Player1",MASK_GOOD)~ THEN REPLY @87 GOTO RD43A
   IF ~InParty("Imoen2")~ THEN REPLY @88 GOTO RD43
   IF ~!InParty("Imoen2")~ THEN REPLY @88 GOTO RD43A
   IF ~InParty("Imoen2")~ THEN REPLY @89 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD43
   IF ~!InParty("Imoen2")~ THEN REPLY @89 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD43A
   IF ~~ THEN REPLY @90 GOTO RD42

END

IF ~~ THEN BEGIN RD42
   SAY @91
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-50)~ EXIT
END

IF ~~ THEN BEGIN RD42A
   SAY @92
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-50)~ EXIT
END

IF ~~ THEN BEGIN RD43A
   SAY @93
   IF ~~ THEN GOTO RD44
END

IF ~~ THEN BEGIN RD44
   SAY @94
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @95 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD45
   IF ~~ THEN REPLY @96 GOTO RD45
   IF ~~ THEN REPLY @97 GOTO RD42
   IF ~~ THEN REPLY @98 GOTO RD45
   IF ~Alignment("Player1",MASK_GOOD)~ THEN REPLY @99 GOTO RD42
END

IF ~~ THEN BEGIN RD45
   SAY @100
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @101 DO ~SetGlobal("LR_SpokeAboutSoul","LOCALS",1)~ GOTO RD46A
   IF ~~ THEN REPLY @102 GOTO RD42
   IF ~~ THEN REPLY @103 GOTO RD46
END

IF ~~ THEN BEGIN RD46A
   SAY @104
   IF ~!Global("LRFrom9","LOCALS",1)~ THEN GOTO RD46B
   IF ~Global("LRFrom9","LOCALS",1)~ THEN GOTO RD412
END

IF ~~ THEN BEGIN RD46B
   SAY @105
   IF ~~ THEN GOTO RD46
END

IF ~~ THEN BEGIN RD46
   SAY @106
   IF ~!InParty("HaerDalis")~ THEN REPLY @107 GOTO RD47
   IF ~!InParty("HaerDalis")~ THEN REPLY @108 GOTO RD47
   IF ~!InParty("HaerDalis")~ THEN REPLY @109 GOTO RD42A
   IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ HAER_JON41
END

IF ~~ THEN BEGIN RD47
   SAY @110
   IF ~~ THEN REPLY @111 GOTO RD48
   IF ~~ THEN REPLY @112 GOTO RD48
   IF ~~ THEN REPLY @113 GOTO RD48
   IF ~~ THEN REPLY @114 GOTO RD42A
END

IF ~~ THEN BEGIN RD48
   SAY @115
   IF ~~ THEN GOTO RD48A
END

IF ~~ THEN BEGIN RD48A
   SAY @116
   IF ~~ THEN REPLY @117 GOTO RD49
   IF ~~ THEN REPLY @118 GOTO RD42
END

IF ~~ THEN BEGIN RD49
   SAY @119
   IF ~~ THEN GOTO RD49A
END

IF ~~ THEN BEGIN RD49A
   SAY @120
   IF ~~ THEN REPLY @121 GOTO INTERJ_TO10
   IF ~~ THEN REPLY @122 GOTO INTERJ_TO10
   IF ~Global("LR_SpokeAboutSoul","LOCALS",1)~ THEN REPLY @123 DO ~SetGlobal("LRFrom9","LOCALS",1)~ GOTO INTERJ_TO12
   IF ~!Global("LR_SpokeAboutSoul","LOCALS",1)~ THEN REPLY @124 DO ~SetGlobal("LRFrom9","LOCALS",1)~ GOTO RD46A
END

IF ~~ THEN BEGIN RD410
   SAY @125
   IF ~~ THEN REPLY @126 GOTO RD42
   IF ~~ THEN REPLY @127 GOTO RD411
   IF ~~ THEN REPLY @128 GOTO RD411
END

IF ~~ THEN BEGIN RD411
   SAY @129
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-10)~ EXIT
END

IF ~~ THEN BEGIN RD412
   SAY @130
   IF ~~ THEN REPLY @131 GOTO RD411
   IF ~!InParty("Imoen2")~ THEN REPLY @132 GOTO RD413
   IF ~InParty("Imoen2")~ THEN REPLY @132 EXTERN ~IMOEN25J~ IMOEN_JON41
   IF ~~ THEN REPLY @133 GOTO RD411
END

IF ~~ THEN BEGIN RD413
   SAY @134
   IF ~~ THEN GOTO RD414
END

IF ~~ THEN BEGIN RD414
   SAY @135
   IF ~~ THEN EXIT
END

////////////////////////////////////////////////////////////////////
/////////IRENICUS BANTER DIALOG 5
////////////////////////////////////////////////////////////////////

IF ~Global("JonTalk","LOCALS",10)~ THEN BEGIN RD51
   SAY @136 
   IF ~~ THEN REPLY @137 GOTO RD53
   IF ~~ THEN REPLY @138 GOTO RD52
   IF ~~ THEN REPLY @139 GOTO RD55
   IF ~~ THEN REPLY @140 GOTO RD52
   IF ~~ THEN REPLY @141 GOTO RD52
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @142 GOTO RD55A
END

IF ~~ THEN BEGIN RD52
   SAY @143  
   IF ~~ THEN REPLY @144 GOTO RD54
   IF ~~ THEN REPLY @145 GOTO RD55
END

IF ~~ THEN BEGIN RD53
   SAY @146
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD54
   SAY @147
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-50)~ EXIT
END

IF ~~ THEN BEGIN RD55
   SAY @148
   IF ~~ THEN GOTO RD55B
END

IF ~~ THEN BEGIN RD55A
   SAY @149
   IF ~~ THEN GOTO RD55B
END

IF ~~ THEN BEGIN RD55B
   SAY @150
  IF ~~ THEN REPLY @151 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD57
  IF ~~ THEN REPLY @152 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -10)~ GOTO RD56A
  IF ~~ THEN REPLY @153 GOTO RD54
  IF ~~ THEN REPLY @154 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD57
  IF ~~ THEN REPLY @155 GOTO RD56
END

IF ~~ THEN BEGIN RD56A
  SAY @156
  IF ~~ THEN GOTO RD56
END

IF ~~ THEN BEGIN RD56
   SAY @157
   IF ~~ THEN REPLY @158 GOTO RD58
   IF ~~ THEN REPLY @159 GOTO RD54
END

IF ~~ THEN BEGIN RD57
   SAY @160
   IF ~~ THEN REPLY @158 GOTO RD59
   IF ~~ THEN REPLY @159 GOTO RD54
END

IF ~~ THEN BEGIN RD58
   SAY @161
   IF ~~ THEN REPLY @162 GOTO RD53
   IF ~~ THEN REPLY @163 GOTO RD58A
END

IF ~~ THEN BEGIN RD58A
   SAY @164
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD59
   SAY @165
   IF ~~ THEN REPLY @166 GOTO RD510
   IF ~~ THEN REPLY @167 GOTO RD53
   IF ~~ THEN REPLY @168 GOTO RD58A
   IF ~~ THEN REPLY @169 GOTO RD510
   IF ~~ THEN REPLY @170 GOTO RD54
   IF ~~ THEN REPLY @171 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",3)~ GOTO RD510
END

IF ~~ THEN BEGIN RD510
   SAY @172
   IF ~InParty("Sarevok")~ THEN REPLY @173 EXTERN ~SAREV25J~ SAREVOK_JON51
   IF ~!InParty("Sarevok")~ THEN REPLY @173 GOTO RD511
   IF ~~ THEN REPLY @174 GOTO RD54
END

IF ~~ THEN BEGIN RD511
   SAY @175
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @176 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD512
   IF ~~ THEN REPLY @177 GOTO RD58A
   IF ~~ THEN REPLY @178 GOTO RD53
   IF ~~ THEN REPLY @179 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 3)~ GOTO RD512
   IF ~~ THEN REPLY @180 GOTO RD54
   IF ~~ THEN REPLY @181 GOTO RD58A
END

IF ~~ THEN BEGIN RD512
   SAY @182
   IF ~~ THEN REPLY @183 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD513
   IF ~~ THEN REPLY @184 GOTO RD54
END

IF ~~ THEN BEGIN RD513
   SAY @185
   IF ~~ THEN REPLY @186 GOTO RD514
   IF ~~ THEN REPLY @187 GOTO RD515
END

IF ~~ THEN BEGIN RD514
   SAY @188
   IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ IMOEN_JON51
   IF ~!InParty("Imoen2")~ THEN EXIT
END

IF ~~ THEN BEGIN RD515
  SAY @189
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

///////////////////////////////////////////////////////////
//////////IRENICUS BANTER DIALOG 6
///////////////////////////////////////////////////////////

IF ~Global("JonTalk","LOCALS",12) !Global("JonUndecided","GLOBAL",3)~ THEN BEGIN RD61
   SAY @190  
   IF ~~ THEN REPLY @191 GOTO RD64
   IF ~!Race(Player1,elf)~ THEN REPLY @192 GOTO RD62
   IF ~Race(Player1,elf)~ THEN REPLY @193 GOTO RD62
   IF ~~ THEN REPLY @194 GOTO RD63
   IF ~~ THEN REPLY @195 GOTO RD64
END

IF ~~ THEN BEGIN RD62
   SAY @196
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN RD63
   SAY @197
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)SetGlobal("JonBanished","GLOBAL",1) LeaveParty() ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN RD64
   SAY @198
   IF ~!Race(Player1,elf)~ THEN REPLY @199 GOTO RD66
   IF ~Race(Player1,elf)~ THEN REPLY @200 GOTO RD66
   IF ~~ THEN REPLY @201 GOTO RD65
   IF ~~ THEN REPLY @202 GOTO RD66
END

IF ~~ THEN BEGIN RD65
   SAY @203
   IF ~~ THEN REPLY @204 GOTO RD63
   IF ~~ THEN REPLY @205 GOTO RD66
END

IF ~~ THEN BEGIN RD66
   SAY @206
   IF ~~ THEN REPLY @207 GOTO RD67
   IF ~~ THEN REPLY @208 GOTO RD67
   IF ~~ THEN REPLY @209 GOTO RD62
   IF ~~ THEN REPLY @210 GOTO RD67
END

IF ~~ THEN BEGIN RD67
   SAY @211
   IF ~~ THEN REPLY @212 GOTO RD68
   IF ~~ THEN REPLY @213 GOTO RD62
   IF ~~ THEN REPLY @214 GOTO RD68
END

IF ~~ THEN BEGIN RD68
   SAY @215
   IF ~~ THEN GOTO RD69
END

IF ~~ THEN BEGIN RD69
   SAY @216
   IF ~~ THEN REPLY @217 GOTO RD610
   IF ~~ THEN REPLY @218 GOTO RD62
   IF ~~ THEN REPLY @219 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD610
   IF ~~ THEN REPLY @220 GOTO RD615
   IF ~~ THEN REPLY @221 GOTO RD612
   IF ~~ THEN REPLY @222 GOTO RD611
END

IF ~~ THEN BEGIN RD610
   SAY @223
   IF ~~ THEN REPLY @224 GOTO RD614
   IF ~~ THEN REPLY @225 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO RD615
   IF ~~ THEN REPLY @226 GOTO RD62
END

IF ~~ THEN BEGIN RD611
   SAY @227
   IF ~~ THEN REPLY @228 GOTO RD613
   IF ~~ THEN REPLY @229 GOTO RD610
   IF ~~ THEN REPLY @230 GOTO RD62
END

IF ~~ THEN BEGIN RD612
   SAY @231
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN RD613
   SAY @232
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN RD614
   SAY @233
   IF ~~ THEN GOTO RD615
END

IF ~~ THEN BEGIN RD615
   SAY @234
   IF ~~ THEN REPLY @235 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD616
   IF ~~ THEN REPLY @236 GOTO RD616
   IF ~~ THEN REPLY @237 GOTO RD62
END

IF ~~ THEN BEGIN RD616
   SAY @238
   IF ~~ THEN REPLY @239 GOTO RD617
   IF ~~ THEN REPLY @226 GOTO RD62
   IF ~~ THEN REPLY @240 GOTO RD617
END

IF ~~ THEN BEGIN RD617
   SAY @241
   IF ~~ THEN GOTO RD618
END

IF ~~ THEN BEGIN RD618
   SAY @242
   IF ~~ THEN REPLY @243 GOTO RD619
   IF ~~ THEN REPLY @244 GOTO RD622
   IF ~~ THEN REPLY @245 GOTO RD62
END

IF ~~ THEN BEGIN RD619
   SAY @246
   IF ~~ THEN GOTO RD620
END

IF ~~ THEN BEGIN RD620
   SAY @247
   IF ~~ THEN GOTO RD620A
END

IF ~~ THEN BEGIN RD620A
   SAY @248
   IF ~~ THEN REPLY @249 GOTO RD621
END

IF ~~ THEN BEGIN RD621
   SAY @250
   IF ~~ THEN REPLY @251 GOTO RD622
   IF ~~ THEN REPLY @252 GOTO RD62
END

IF ~~ THEN BEGIN RD622
   SAY @253
   IF ~~ THEN REPLY @254 GOTO RD623
   IF ~~ THEN REPLY @255 GOTO RD62
   IF ~~ THEN REPLY @256 GOTO RD624
   IF ~~ THEN REPLY @257 GOTO RD624
   IF ~~ THEN REPLY @258 GOTO RD624
END

IF ~~ THEN BEGIN RD623
   SAY @259
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN RD624
   SAY @260
   IF ~~ THEN REPLY @261 GOTO RD625
   IF ~~ THEN REPLY @262 GOTO RD62
   IF ~~ THEN REPLY @263 GOTO RD625
END

IF ~~ THEN BEGIN RD625
   SAY @264
   IF ~~ THEN REPLY @265 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 3)~ GOTO RD626
   IF ~~ THEN REPLY @266 GOTO RD62
   IF ~~ THEN REPLY @267 GOTO RD627
   IF ~~ THEN REPLY @268 GOTO RD628
END

IF ~~ THEN BEGIN RD626
   SAY @269
   IF ~~ THEN GOTO RD629A
END

IF ~~ THEN BEGIN RD627
   SAY @270
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN RD628
   SAY @271
   IF ~~ THEN GOTO RD629A
END

IF ~~ THEN BEGIN RD629A
   SAY @272
   IF ~~ THEN REPLY @273 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD630
   IF ~~ THEN REPLY @274 GOTO RD62
   IF ~~ THEN REPLY @275 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD631
END

IF ~~ THEN BEGIN RD629
   SAY @276
   IF ~~ THEN REPLY @273 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD630
   IF ~~ THEN REPLY @274 GOTO RD62
   IF ~~ THEN REPLY @275 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 5)~ GOTO RD631
END

IF ~~ THEN BEGIN RD630
   SAY @277
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD631
   SAY @278
   IF ~~ THEN EXIT
END

///////////////////////////////////////////////////////////
//////////IRENICUS BANTER DIALOG 7
///////////////////////////////////////////////////////////

IF ~Global("JonTalk","LOCALS",14) !Global("JonUndecided","GLOBAL",3)~ THEN BEGIN RD71
  SAY @279 
  IF ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,6)~ THEN REPLY @280 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD73A
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @280 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD73
  IF ~!Alignment(Player1,MASK_EVIL) !ReputationGT(Player1,6)~ THEN REPLY @280 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD73
  IF ~~ THEN REPLY @281 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD72
  IF ~~ THEN REPLY @282 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD74
  IF ~~ THEN REPLY @283 DO ~SetGlobal("JonTalk","LOCALS",15)~ GOTO RD74
END

IF ~~ THEN BEGIN RD72
  SAY @284
  IF ~~ THEN REPLY @285 GOTO RD74
  IF ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,6)~ THEN REPLY @286 GOTO RD73A
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @286 GOTO RD73
  IF ~!Alignment(Player1,MASK_EVIL) !ReputationGT(Player1,6)~ THEN REPLY @286 GOTO RD73
END

IF ~~ THEN BEGIN RD73A
  SAY @287
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD73
  SAY @288
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD74
  SAY @289
  IF ~~ THEN REPLY @290 GOTO RD75
END

IF ~~ THEN BEGIN RD75
  SAY @291
  IF ~~ THEN REPLY @292 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",3)~ GOTO RD78
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @293 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @293 GOTO RD77
  IF ~~ THEN REPLY @294 GOTO RD78
  IF ~~ THEN REPLY @295 GOTO RD76A
END

IF ~~ THEN BEGIN RD76A
  SAY @296
  IF ~~ THEN GOTO RD76B
END

IF ~~ THEN BEGIN RD76B
  SAY @297
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)SetGlobal("JonBanished","GLOBAL",1) LeaveParty() ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN RD77A
  SAY @298
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD77
  SAY @299
  IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN RD78
  SAY @300
  IF ~~ THEN REPLY @301 GOTO RD79A
  IF ~~ THEN REPLY @302 GOTO RD79A 
END

IF ~~ THEN BEGIN RD79A
  SAY @303
  IF ~~ THEN GOTO RD79
END

IF ~~ THEN BEGIN RD79
  SAY @304
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @305 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @305 GOTO RD77
  IF ~~ THEN REPLY @306 GOTO RD710
END

IF ~~ THEN BEGIN RD710
  SAY @307
  IF ~~ THEN REPLY @308 GOTO RD711
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @309 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @309 GOTO RD77
  IF ~~ THEN REPLY @310 GOTO RD711
END

IF ~~ THEN BEGIN RD711
  SAY @311
  IF ~~ THEN REPLY @312 GOTO RD712
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @313 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @313 GOTO RD77
END

IF ~~ THEN BEGIN RD712
  SAY @314
  IF ~~ THEN REPLY @315 GOTO RD713
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @316 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @316 GOTO RD77
  IF ~~ THEN REPLY @317 GOTO RD713
END

IF ~~ THEN BEGIN RD713
  SAY @318
  IF ~~ THEN REPLY @319 GOTO RD714
  IF ~~ THEN REPLY @320 GOTO RD714
END

IF ~~ THEN BEGIN RD714
  SAY @321
  IF ~~ THEN REPLY @322 GOTO RD715
  IF ~~ THEN REPLY @323 GOTO RD715
END

IF ~~ THEN BEGIN RD715
  SAY @324
  IF ~~ THEN REPLY @325 GOTO RD716
  IF ~~ THEN REPLY @326 GOTO RD716
END

IF ~~ THEN BEGIN RD716
  SAY @327
  IF ~~ THEN REPLY @328 GOTO RD716A
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @329 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @329 GOTO RD77
END

IF ~~ THEN BEGIN RD716A
  SAY @330
  IF ~~ THEN REPLY @331 GOTO RD717
END

IF ~~ THEN BEGIN RD717
  SAY @330
  IF ~~ THEN REPLY @332 GOTO RD718
END

IF ~~ THEN BEGIN RD718
  SAY @333
  IF ~~ THEN REPLY @334 GOTO RD719
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @335 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @335 GOTO RD77
END

IF ~~ THEN BEGIN RD719
  SAY @336
  IF ~InParty("Imoen2")~  THEN REPLY @337 EXTERN IMOEN25J JON_TRICK 
  IF ~!InParty("Imoen2")~ THEN REPLY @337 GOTO RD720
  IF ~~ THEN REPLY @338 GOTO RD723
  IF ~~ THEN REPLY @339 GOTO RD722
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @340 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @340 GOTO RD77
END

IF ~~ THEN BEGIN RD720
  SAY @341
  IF ~~ THEN GOTO RD721
END

IF ~~ THEN BEGIN RD721
  SAY @342
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD722
  SAY @343
  IF ~~ THEN REPLY @344 GOTO RD720
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @335 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @335 GOTO RD77
END

IF ~~ THEN BEGIN RD723
  SAY @345
  IF ~~ THEN REPLY @346 GOTO RD722
  IF ~~ THEN REPLY @347 GOTO RD76A
  IF ~InParty("Imoen2")~ THEN REPLY @348 EXTERN IMOEN25J JON_TRICK
  IF ~!InParty("Imoen2")~ THEN REPLY @348 GOTO RD720
  IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @349 GOTO RD77A
  IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @349 GOTO RD77
END

/////////////////////////////////////////////////////////////////////////////////
/////////// JON'S EVIL DIALOG
/////////////////////////////////////////////////////////////////////////////////


IF ~Global("JonEvil","LOCALS",2) Global("JonUndecided","GLOBAL",3)~ THEN BEGIN RD81
SAY @350
IF ~
!Class(Player1, CLERIC_ALL) !Class(Player1, MAGE_ALL)~ THEN DO ~IncrementGlobal("JonEvil","LOCALS",1)~ GOTO RD82A
IF ~
   OR(2)
   Class(Player1, CLERIC_ALL) Class(Player1, MAGE_ALL)~ THEN DO ~IncrementGlobal("JonEvil","LOCALS",1)~ GOTO RD82B
END

IF ~~ THEN BEGIN RD82A
   SAY @351
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @352 GOTO RD85
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @352 GOTO RD86
   IF ~~ THEN REPLY @353 GOTO RD83
   IF ~~ THEN REPLY @354 GOTO RD84
END

IF ~~ THEN BEGIN RD82B
   SAY @355
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @352 GOTO RD85
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN REPLY @352 GOTO RD86
   IF ~~ THEN REPLY @353 GOTO RD83
   IF ~~ THEN REPLY @354 GOTO RD84
END

IF ~~ THEN BEGIN RD83
   SAY @356
   IF ~~ THEN GOTO RD84
END

IF ~~ THEN BEGIN RD84
   SAY @357
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN GOTO RD85
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN GOTO RD86
END

IF ~~ THEN BEGIN RD85
   SAY @358
   IF ~~ THEN GOTO RD851
END

IF ~~ THEN BEGIN RD86
   SAY @359
   IF ~~ THEN GOTO RD851
END

IF ~~ THEN BEGIN RD851
   SAY @360
   IF ~~ THEN REPLY @361 GOTO RD87
   IF ~~ THEN REPLY @362 GOTO RD88
   IF ~~ THEN REPLY @363 GOTO RD87
END

IF ~~ THEN BEGIN RD87
   SAY @364
   IF ~~ THEN GOTO RD871
END

IF ~~ THEN BEGIN RD871
   SAY @365
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RD88
   SAY @366
   IF ~~ THEN EXIT
   END


//~~~~~~~~~~~~~~~~~~~~~~~~ ALL CHAINS GO HERE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//----------------------------------DIALOG1 CHAINS--------------------------------
CHAIN3 BJONEL25 SLAYER
@367
== JAHEI25J IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@368
== VICON25J IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@369
== AERIE25J IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN
@370
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@371
== EDWIN25J IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@372
== BJONEL25 IF ~~ THEN
@373
END
IF ~~ THEN REPLY @374 GOTO RD15
IF ~~ THEN REPLY @375 GOTO RD15
IF ~~ THEN REPLY @376 GOTO RD15
IF ~~ THEN REPLY @377 GOTO RD12

//----------------------------------------DIALOG2 CHAINS-------------------------------

CHAIN IMOEN25J IMOEN_JON21
@378
END BJONEL25 RD21A

CHAIN IMOEN25J IMOEN_JON22
@379
END BJONEL25 RD214

//--------------------------------------DIALOG3 CHAINS----------------------------------

CHAIN3 BJONEL25 SOULTALK
@380
==SAREV25J IF ~InParty("Sarevok") Global("ImoenGiveSoul","GLOBAL",2)~ THEN
@381
==SAREV25J IF ~InParty("Sarevok") !Global("ImoenGiveSoul","GLOBAL",2)~ THEN
@382
==IMOEN25J IF ~InParty("Sarevok") Global("ImoenGiveSoul","GLOBAL",2)~ THEN
@383
==IMOEN25J IF ~InParty("Sarevok") !Global("ImoenGiveSoul","GLOBAL",2)~ THEN
@384
==IMOEN25J IF ~!InParty("Sarevok") InParty("Imoen2")~ THEN
@385
END BJONEL25 EMOTIONS

CHAIN3 BJONEL25 EMOTIONS
@386
== JAHEI25J IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@387
== VICON25J IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@388
== AERIE25J IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN
@389
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@390
END BJONEL25 RD37

//-------------------------------------DIALOG4 CHAINS------------------------------------

CHAIN3 BJONEL25 RD43
@391
==IMOEN25J IF ~~ THEN
@392
==BJONEL25 IF ~~ THEN
@393
==SAREV25J IF ~InParty("Sarevok")~ THEN
@394
==BJONEL25 IF ~InParty("Sarevok")~ THEN
@395
END BJONEL25 RD44

CHAIN HAERD25J HAER_JON41
@396
END BJONEL25 RD47

CHAIN3 BJONEL25 INTERJ_TO10
@397 //ADDED A REPLICA FOR JON
==JAHEI25J IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@398
==VICON25J IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@399
==AERIE25J IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN
@400
==ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@401
==IMOEN25J IF ~InParty("Imoen2")~ THEN
@402
END BJONEL25 RD410

CHAIN3 BJONEL25 INTERJ_TO12
@330//ADD A REPLICA FOR JON
== JAHEI25J IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@398
== VICON25J IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@399
== AERIE25J IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN
@400
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@401
==IMOEN25J IF ~InParty("Imoen2")~ THEN
@403
END BJONEL25 RD412

CHAIN IMOEN25J IMOEN_JON41
@404
END BJONEL25 RD413

//-----------------------------DIALOG5 CHAINS-------------------------------

CHAIN SAREV25J SAREVOK_JON51
@405
END BJONEL25 RD511

CHAIN IMOEN25J IMOEN_JON51
@406
EXIT

//-----------------------------DIALOG7 CHAINS-------------------------------

CHAIN IMOEN25J JON_TRICK
@407
END
IF ~~ THEN REPLY @408 EXTERN BJONEL25 RD720
IF ~~ THEN REPLY @409 EXTERN BJONEL25 RD720
IF ~~ THEN REPLY @410 EXTERN BJONEL25 RD720


