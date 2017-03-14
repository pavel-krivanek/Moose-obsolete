tests
testName
	| declaration |

	declaration := self newNode.
	self
		assert: declaration name = '';
		assert: (declaration name: 'test') == declaration;
		assert: declaration name = 'test'.