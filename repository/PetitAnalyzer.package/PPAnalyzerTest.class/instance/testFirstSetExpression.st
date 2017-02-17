testing-firstset
testFirstSetExpression
	| grammar |
	grammar := PPArithmeticParser new.
	self assert: grammar start firstSet includes: '(-0123456789' epsilon: false.
	self assert: grammar addition firstSet includes: '(-0123456789' epsilon: false.
	self assert: grammar factors firstSet includes:  '(-0123456789' epsilon: false.
	self assert: grammar multiplication firstSet includes:  '(-0123456789' epsilon: false.
	self assert: grammar number firstSet includes: '-0123456789' epsilon: false.
	self assert: grammar parentheses firstSet includes: '(' epsilon: false.
	self assert: grammar power firstSet includes: '(-0123456789' epsilon: false.
	self assert: grammar primary firstSet includes: '(-0123456789' epsilon: false.
	self assert: grammar terms firstSet includes: '(-0123456789' epsilon: false