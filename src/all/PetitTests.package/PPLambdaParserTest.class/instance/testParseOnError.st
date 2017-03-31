testing-utilities
testParseOnError
	| beenHere |
	result := self parserClass parse: '\x. y' onError: [ self fail ].
	self assert: result equals: #('x' 'y').
	beenHere := false.
	result := self parserClass parse: '\x.' onError: [ beenHere := true ].
	self assert: beenHere.
	beenHere := false.
	result := self parserClass
		parse: '\x. '
		onError: [ :fail | 
			beenHere := true.
			fail ].
	self assert: beenHere.
	self assert: result message includesSubstring: 'letter'.
	self assert: result message includesSubstring: 'expected'.
	self assert: result position equals: 4.
	beenHere := false.
	result := self parserClass
		parse: '\x. '
		onError: [ :msg :pos | 
			self assert: msg includesSubstring: 'letter'.
			self assert: msg includesSubstring: 'expected'.
			self assert: pos equals: 4.
			beenHere := true ].
	self assert: result.
	self assert: beenHere
