statements
sqlStatementList
	^(sqlStatement separatedBy: $; asPParser trim)