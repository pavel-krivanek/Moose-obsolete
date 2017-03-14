tests
testColumnDefWithLongDefault
			
	self 
		parse: 'Year              VARCHAR2(4)      DEFAULT ''0000'' NOT NULL'
		rule:#columnDef