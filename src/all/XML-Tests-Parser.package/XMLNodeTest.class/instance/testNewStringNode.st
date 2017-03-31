tests
testNewStringNode
	| stringNode |

	stringNode := self newNode newStringNode: 'test'.
	self
		assert: stringNode isStringNode;
		assert: stringNode string = 'test'.