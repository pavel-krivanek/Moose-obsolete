tests
testIsString
	| stringNode |

	stringNode := self newNode.
	self
		assert: (stringNode isString: '');
		assert: (stringNode isString: self newNode);
		deny: (stringNode isString: 'test');
		deny: (stringNode isString: (self nodeClass string: 'test')).

	stringNode string: 'test'.
	self
		assert: (stringNode isString: 'test');
		assert: (stringNode isString: (self nodeClass string: 'test'));
		deny: (stringNode isString: '');
		deny: (stringNode isString: self newNode).