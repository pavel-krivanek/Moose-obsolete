testing-firstset
testFirstSetGrammarB
	| grammar |
	grammar := self grammarB.
	self assert: (grammar at: #E) firstSet includes: '(i' epsilon: false.
	self assert: (grammar at: #Ep) firstSet includes: '+' epsilon: true.
	self assert: (grammar at: #T) firstSet includes: '(i' epsilon: false.
	self assert: (grammar at: #Tp) firstSet includes: '*' epsilon: true.
	self assert: (grammar at: #F) firstSet includes: '(i' epsilon: false