tests
testColumnDefWithPrimaryKey
	
	self 
		parse: ' colName PRIMARY KEY '
		rule: #columnDef.