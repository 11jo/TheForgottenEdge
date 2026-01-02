APPEND PERDUE

IF WEIGHT #-1 ~!NumTimesTalkedTo(0) PartyHasItem("losw1h17") !Global("HelpPerdue","GLOBAL",2)~ THEN BEGIN TFE_first_REPLY
  SAY #%eet_2%14811
  IF ~~  THEN REPLY @2000 DO ~SetGlobal("HelpPerdue","GLOBAL",2)
								AddexperienceParty(100)
								EraseJournalEntry(%eet_2%27354)
								EraseJournalEntry(%eet_2%27355)
								AddJournalEntry(@2003,QUEST_DONE)~ EXTERN PERDUE TFE_EDGE_REPLY
END

IF ~~ THEN BEGIN TFE_EDGE_REPLY
  SAY @2001
  IF ~~ THEN REPLY @2002 EXIT
END

END
