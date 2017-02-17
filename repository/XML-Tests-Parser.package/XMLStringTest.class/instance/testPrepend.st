tests
testPrepend
	| stringNode |

	stringNode := self newNode.
	stringNode prepend: 'three'.
	self assert: stringNode string = 'three'.

	stringNode prepend: (self nodeClass string: 'two').
	self assert: stringNode string = 'twothree'.

	stringNode prepend: 'one'.
	self assert: stringNode string = 'onetwothree'.