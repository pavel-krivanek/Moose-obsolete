tests
testCreateIndexOnMultipleColumnsWithSpaces

	self 
		parse: 'CREATE INDEX W_ClickCount_TargetURL ON W_ClickCount(AD_Client_ID, TargetURL)'
		rule: #createIndex.
	