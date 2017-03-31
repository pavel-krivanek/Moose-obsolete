tests
testHasData
	| pi |

	pi := self newNode.
	self deny: pi hasData.

	pi data: 'data'.
	self assert: pi hasData.

	pi data: ''.
	self deny: pi hasData.