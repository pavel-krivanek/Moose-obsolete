tests
testForeignKeyClause
	
	self 
		parse: 'REFERENCES A_USER (A_ID)'
		rule: #foreignKeyClause.
	self 
		parse: 'REFERENCES A_USER (A_ID , testName)'
		rule: #foreignKeyClause.
	
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) ON DELETE restrict'
		rule: #foreignKeyClause.
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) ON UPDATE set default'
		rule: #foreignKeyClause.
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) ON DELETE restrict match identifierName'
		rule: #foreignKeyClause.
		
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) ON DELETE restrict match identifierName NOT DEFERRABLE'
		rule: #foreignKeyClause.
	
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) NOT DEFERRABLE initially deferred'
		rule: #foreignKeyClause.	
	self 
		parse: 'REFERENCES A_USER (A_ID , testName) DEFERRABLE'
		rule: #foreignKeyClause.