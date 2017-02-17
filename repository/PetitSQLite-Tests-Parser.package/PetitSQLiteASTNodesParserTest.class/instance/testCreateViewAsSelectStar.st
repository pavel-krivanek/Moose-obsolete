tests
testCreateViewAsSelectStar
	super testCreateViewAsSelectStar.
	
	self assert: result name equals: 'VG1'.
	self assert: result completeName equals: 'DBEW.VG1'.
	self assert: result ofTables size equals: 1.
	self assert: result ofTables first equals: 'DBT.TGO'.
	
	