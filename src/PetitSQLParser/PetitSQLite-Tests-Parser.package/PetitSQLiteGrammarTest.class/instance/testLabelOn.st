tests
testLabelOn
	self 
		parse: 'LABEL ON DB2YTST.TPE0752
         (
           C95836 IS ''AM95836_Art''
         , C97125 IS ''AM97125_Sprache_(mehrspr._Text''
         , C95795 IS ''AM95795_Rolle_From-To''
         , C95788 IS ''AM95788_Rolle_To-From''
         , C99991 IS ''AM99991_TS-GLTG-AB-T''
         , C99992 IS ''AM99992_TS-GLTG-BIS-T''
         , C99993 IS ''AM99993_TS-HIST-ED-T''
         , C99994 IS ''AM99994_CHIST-USERID-T''
         , C99995 IS ''AM99995_TS-HIST-ER-T''
         , C99996 IS ''AM99996_CHIST-STATUS-T''
         )'
		rule: #label.