testing-classes
testEmptySquaredParenthesis

	result := self 
		parse: '[]'
		rule: #emptySquaredParenthesis.
	self assert: result inputValue = '[]'.
			
	result := self 
		parse: ' [] '
		rule: #emptySquaredParenthesis.
		
	self assert: result inputValue = '[]'.