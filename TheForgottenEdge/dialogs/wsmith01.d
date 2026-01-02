EXTEND_BOTTOM WSMITH01 58
  IF ~PartyHasItem("losw1h17")~
  THEN REPLY @3000 EXTERN wsmith01 FE_ForgottenEdge
END

APPEND wsmith01
IF ~~ THEN BEGIN FE_ForgottenEdge
   SAY @3001
   IF ~NumItemsPartyGT("POTN10",4) NumItemsPartyGT("POTN14",4)~ THEN EXTERN wsmith01 FE_ForgottenEdgeItem
   IF ~!NumItemsPartyGT("POTN10",4)~ THEN EXTERN wsmith01 FE_ForgottenEdgeMiss
   IF ~!NumItemsPartyGT("POTN14",4)~ THEN EXTERN wsmith01 FE_ForgottenEdgeMiss   
END
END

APPEND wsmith01
IF ~~ THEN BEGIN FE_ForgottenEdgeItem
   SAY @3007
   IF ~~ THEN REPLY @3008 EXTERN wsmith01 FE_ForgottenEdgeWork
   IF ~~ THEN REPLY @3002 EXTERN wsmith01 52
END
END

APPEND wsmith01
IF ~~ THEN BEGIN FE_ForgottenEdgeWork
   SAY @3009
   IF ~PartyGoldGT(4999)~
   THEN REPLY @3010 DO ~
   SetGlobal("FE_ForgeItem","GLOBAL",1)
   TakePartyGold(5000)
   DestroyGold(5000)
   ~ EXTERN wsmith01 FE_ForgottenEdgeScene
   IF ~~ THEN REPLY @3002 EXTERN wsmith01 52
END
END

APPEND wsmith01
IF ~~ THEN BEGIN FE_ForgottenEdgeScene
   SAY @3011
   IF ~~ THEN DO ~
   SetGlobal("FE_ForgeStuff","GLOBAL",1)
   StartCutSceneMode()
   StartCutScene("cromwell")
   ~ EXIT
END
END

APPEND wsmith01
IF ~~ THEN BEGIN FE_ForgottenEdgeMiss
   SAY @3003
   IF ~~ THEN EXIT
END
END



