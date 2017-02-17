tests
testCreateIndex

	self 
		parse:	'CREATE INDEX CounterCount_PageURL ON W_CounterCount(AD_Client_ID)'
		rule: #createIndex.