tests
testExpression
	"self flag: #TODO."
	self 
		parse: 'IsActive'
		rule: #expression.
	
	self 
		parse: 'IsActive in (''Y'',''N'')'
		rule: #expression.