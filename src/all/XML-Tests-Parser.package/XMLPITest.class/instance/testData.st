tests
testData
	| pi |

	pi := self newNode.
	self
		assert: pi data = '';
		assert: (pi data: 'test') == pi;
		assert: pi data = 'test'.