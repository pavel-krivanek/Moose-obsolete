grammar-statements
switchStatement

	^(self tokenFor: 'switch') , parExpression , 
	(self tokenFor: '{'),
		switchBlockStatementGroup star ,
	(self tokenFor: '}')