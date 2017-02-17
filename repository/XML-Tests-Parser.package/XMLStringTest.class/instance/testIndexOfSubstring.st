tests
testIndexOfSubstring
	| stringNode |

	stringNode := self newNode.
	self
		assert: (stringNode indexOfSubstring: 'one') isZero;
		assert: (stringNode indexOfSubstring: (self nodeClass string: 'one')) isZero.
	stringNode prepend: 'one'.
	self
		assert: (stringNode indexOfSubstring: 'one') = 1;
		assert: (stringNode indexOfSubstring: (self nodeClass string: 'one')) = 1.

	self
		assert: (stringNode indexOfSubstring: 'two') isZero;
		assert: (stringNode indexOfSubstring: (self nodeClass string: 'two')) isZero.
	stringNode append: 'two'.
	self
		assert: (stringNode indexOfSubstring: 'two') = 4;
		assert: (stringNode indexOfSubstring: (self nodeClass string: 'two')) = 4.