tests
testCreateIndexOnMultipleColumns

	self 
		parse: 'CREATE INDEX AD_Archive_Documents ON AD_Archive(AD_Table_ID,AD_Process_ID)'
		rule: #createIndex.
