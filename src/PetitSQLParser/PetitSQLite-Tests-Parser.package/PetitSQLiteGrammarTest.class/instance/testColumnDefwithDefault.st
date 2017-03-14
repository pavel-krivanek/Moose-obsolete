tests
testColumnDefwithDefault
	
    	self 
		parse: 'Posted                   CHAR(1)           DEFAULT ''N'' NOT NULL'
		rule: #columnDef.