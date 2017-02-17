tests
testCreateIndexIfNotExists

	self 
		parse:	'CREATE INDEX  IF NOT EXISTS dbName.W_CounterCount_PageURL ON W_CounterCount(AD_Client_ID, PageURL)'
		rule: #createIndex.
