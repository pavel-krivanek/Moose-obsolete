testing-fancy
testFibonacci
	"This parser accepts fibonacci sequences with arbitrary start pairs."
	
	| parser |
	parser := ((self integer , self integer) end ==> [ :pair | pair first + pair last ])
		/ (self integer , (self integer , self integer) and >=> [ :stream :continuation |
			| result |
			result := continuation value.
			(result isPetitFailure or: [ result first + result last first ~= result last last ])
				ifFalse: [ parser parseOn: stream ]
				ifTrue: [ PPFailure message: 'invalid fibonacci sequence' context: stream ] ]).
	self assert: parser parse: #(1 1) to: 2.
	self assert: parser parse: #(1 1 2) to: 3.
	self assert: parser parse: #(1 1 2 3) to: 5.
	self assert: parser parse: #(1 1 2 3 5) to: 8.
	self assert: parser parse: #(1 1 2 3 5 8) to: 13.
	self assert: parser parse: #(1 1 2 3 5 8 13) to: 21.
	self assert: parser fail: #().
	self assert: parser fail: #(1).
	self assert: parser fail: #(1 2 3 4) end: 2
	