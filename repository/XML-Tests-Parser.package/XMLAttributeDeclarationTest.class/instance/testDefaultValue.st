tests
testDefaultValue
	| declaration |

	declaration := self newNode.
	self
		assert: declaration defaultValue = '';
		assert: (declaration defaultValue: 'test') == declaration;
		assert: declaration defaultValue = 'test'.