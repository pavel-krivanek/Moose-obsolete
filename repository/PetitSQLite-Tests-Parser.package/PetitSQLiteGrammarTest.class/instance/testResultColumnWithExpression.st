tests
testResultColumnWithExpression

	self 
		parse: ' IsActive in (''Y'',''N'') as testName ' 
		rule: #resultColumn.
