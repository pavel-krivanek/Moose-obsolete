tests
testColumnDefWithVarChar2
	self 
		parse: ' RELTYPNAME VARCHAR2(255 CHAR)'
		rule: #columnDef.