testing-firstset
testFirstSetGrammarA
	| grammar |
	grammar := self grammarA.
	self assert: (grammar at: #a) firstSet includes: 'a' epsilon: false.
	self assert: (grammar at: #b) firstSet includes: 'b' epsilon: false.
	self assert: (grammar at: #c) firstSet includes: 'c' epsilon: false.
	self assert: (grammar at: #d) firstSet includes: 'd' epsilon: false.
	self assert: (grammar at: #e) firstSet includes: '' epsilon: true.
	self assert: (grammar at: #S) firstSet includes: 'abc' epsilon: false.
	self assert: (grammar at: #A) firstSet includes: 'ab' epsilon: true.
	self assert: (grammar at: #B) firstSet includes: 'b' epsilon: true