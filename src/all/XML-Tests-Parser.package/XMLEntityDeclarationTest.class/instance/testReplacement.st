tests
testReplacement
	| declaration |

	declaration := self newNode.
	self
		assert: declaration replacement = '';
		assert: (declaration replacement: 'test') == declaration;
		assert: declaration replacement = 'test'.