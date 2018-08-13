tests
testNewMethod
	| method time |
	
	method := RGMethod unnamed.
	self assert: method isMethod. 
	
	self assert: (method isRingResolved).
	
	self assert: (method hasUnresolvedAll: #(name protocol sourceCode package author time)).


	self assert: (method hasUnresolvedAll: #(name sourceCode package author time)).
	self assert: method sourceCode lines first trimBoth equals: 'unresolvedMessage'.
	method sourceCode: 'someMessage ^ yourself'.
	self assert: (method hasUnresolvedAll: #(name package author time)).
	self assert: method sourceCode equals: 'someMessage ^ yourself'.

	self assert: method author equals: ''.
	method author: 'FullAuthorName'.
	self assert: (method hasUnresolvedAll: #(time name)).
	self assert: method author equals: 'FullAuthorName'.
	
	time := DateAndTime now.
	self assert: method time equals: DateAndTime new.
	method time: time.
	self assert: (method hasUnresolved: #name).
	self assert: method time equals: time.
