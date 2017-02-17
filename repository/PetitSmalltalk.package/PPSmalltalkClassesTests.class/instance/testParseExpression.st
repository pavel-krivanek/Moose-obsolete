testing-protocol
testParseExpression
	result := self parserClass parseExpression: '1 + 2'.
	self assert: result isMessage.
	self assert: result source equals: '1 + 2'.
	result := self parserClass parseExpression: '| a | 1 + a'.
	self assert: result isSequence.
	self assert: result source equals: '| a | 1 + a'.
	result := self parserClass parseExpression: '1 + 2. ^ 3'.
	self assert: result isSequence.
	self assert: result source equals: '1 + 2. ^ 3'.
	result := self parserClass parseExpression: '1 + ' onError: [ :err | true ].
	self assert: result.
	self should: [ self parserClass parseExpression: '1 + ' ] raise: Error