tests
testAppend
	| stringNode |

	stringNode := self newNode.
	stringNode append: 'one'.
	self assert: stringNode string = 'one'.

	stringNode append: (self nodeClass string: 'two').
	self assert: stringNode string = 'onetwo'.

	stringNode append: 'three'.
	self assert: stringNode string = 'onetwothree'.