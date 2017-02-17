tests
testCreateIndexUnique

	self 
		parse:	'CREATE UNIQUE INDEX W_CounterCount_PageURL ON W_CounterCount(AD_Client_ID)'
		rule: #createIndex.