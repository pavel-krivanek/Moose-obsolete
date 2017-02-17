tests
testCreateIndexUniqueIfNotExists

	self 
		parse:	'CREATE UNIQUE INDEX  IF NOT EXISTS W_CounterCount_PageURL ON W_CounterCount(AD_Client_ID,PageURL)'
		rule: #createIndex.