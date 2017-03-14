tests
testIsStringNode
	| stringNode |

	self assert: self newNode isStringNode.

	stringNode := self newNode.
	self
		assert: (stringNode isStringNode: '');
		assert: (stringNode isStringNode: self newNode);
		deny: (stringNode isStringNode: 'test');
		deny: (stringNode isStringNode: (self nodeClass string: 'test')).

	stringNode string: 'test'.
	self
		assert: (stringNode isStringNode: 'test');
		assert: (stringNode isStringNode: (self nodeClass string: 'test'));
		deny: (stringNode isStringNode: '');
		deny: (stringNode isStringNode: self newNode).