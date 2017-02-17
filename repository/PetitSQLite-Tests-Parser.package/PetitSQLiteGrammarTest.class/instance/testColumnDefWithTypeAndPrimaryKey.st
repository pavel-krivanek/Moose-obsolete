tests
testColumnDefWithTypeAndPrimaryKey
	
	self 
		parse: ' colName number PRIMARY KEY '
		rule: #columnDef.