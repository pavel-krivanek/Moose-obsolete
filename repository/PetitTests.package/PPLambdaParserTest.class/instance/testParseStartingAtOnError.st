testing-utilities
testParseStartingAtOnError
	| beenHere |
	result := self parserClass parse: 'x' startingAt: #variable onError: [ self fail ].
	self assert: result equals: 'x'.
	beenHere := false.
	result := self parserClass parse: '\' startingAt: #variable onError: [ beenHere := true ].
	self assert: beenHere.
	beenHere := false.
	result := self parserClass
		parse: '\ '
		startingAt: #variable
		onError: [ :fail | 
			beenHere := true.
			fail ].
	self assert: beenHere.
	self assert: result message equals: 'letter expected'.
	self assert: result position equals: 0.
	beenHere := false.
	result := self parserClass
		parse: '\ '
		startingAt: #variable
		onError: [ :msg :pos | 
			self assert: msg equals: 'letter expected'.
			self assert: pos equals: 0.
			beenHere := true ].
	self assert: beenHere
