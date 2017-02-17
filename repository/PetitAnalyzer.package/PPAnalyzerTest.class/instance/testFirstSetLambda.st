testing-firstset
testFirstSetLambda
	| grammar |
	grammar := PPLambdaParser new.
	self assert: grammar start firstSet includes: '(ABCDEFGHIJKLMNOPQRSTUVWXYZ\abcdefghijklmnopqrstuvwxyz' epsilon: false.
	self assert: grammar abstraction firstSet includes: '\' epsilon: false.
	self assert: grammar application firstSet includes: '(' epsilon: false.
	self assert: grammar expression firstSet includes: '(ABCDEFGHIJKLMNOPQRSTUVWXYZ\abcdefghijklmnopqrstuvwxyz' epsilon: false.
	self assert: grammar variable firstSet includes: 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' epsilon: false