EXTEND_BOTTOM PERDUE 11
  IF ~PartyHasItem("losw1h17") !Global("HelpPerdue","GLOBAL",2)~
     THEN REPLY @2000
     DO ~
     	SetGlobal("HelpPerdue","GLOBAL",2)
	AddexperienceParty(100)
	EraseJournalEntry(27354)
      	EraseJournalEntry(27355)
	AddJournalEntry(@2003,QUEST_DONE)
	~
     	EXTERN PERDUE TFE_EDGE_REPLY
END

APPEND PERDUE
IF ~~ THEN BEGIN TFE_EDGE_REPLY
  SAY @2001
  IF ~~ THEN REPLY @2002 EXIT
END
END
