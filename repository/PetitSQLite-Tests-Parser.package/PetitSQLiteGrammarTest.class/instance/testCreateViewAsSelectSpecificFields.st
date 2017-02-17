tests
testCreateViewAsSelectSpecificFields

	self 
		parse:	'CREATE VIEW
       DB2.VBUE
 AS SELECT 836, C962, 3425, 4, 365, 67, D63,
    C69, C3, C8, C7, C8, C4, 0, 100,
    C631, C3538, D638, C91, C92, C3, C4, C5,
    C9
 FROM DB2ST.TOB'
		rule: #createView.