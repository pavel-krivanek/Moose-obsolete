testing-protocol
testParseMethod
	result := self parserClass parseMethod: 'do 1 + 2'.
	self assert: result isMethod.
	self assert: result source equals: 'do 1 + 2'.
	result := self parserClass parseMethod: 'do 1 +' onError: [ :err | true ].
	self assert: result.
	self should: [ self parserClass parseMethod: 'do 1 +' ] raise: Error