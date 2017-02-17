tests
testSelectCoreWithMoreTablesAndColumns

	self 
		parse: 'Select testTable.user_id , testTable2.user_id
		from testTable, testTable2'
		rule: #selectCore.