tests
testColumnConstraintPrimaryKeyOthers

	self 
		parse: '	PRIMARY KEY asc autoincrement ' 
		rule: #columnConstraintPrimaryKey.
	self 
		parse: '	PRIMARY KEY desc on conflict ignore autoincrement ' 
		rule: #columnConstraintPrimaryKey.
	self 
		parse: '	PRIMARY KEY on conflict ignore autoincrement ' 
		rule: #columnConstraintPrimaryKey.
	self 
		parse: '	PRIMARY KEY on conflict abort ' 
		rule: #columnConstraintPrimaryKey.
	self 
		parse: '	PRIMARY KEY desc on conflict ignore ' 
		rule: #columnConstraintPrimaryKey.
	