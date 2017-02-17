tests
testAttribute
	| declaration |

	declaration := self newNode.
	self
		assert: declaration attribute = '';
		assert: (declaration attribute: 'test') == declaration;
		assert: declaration attribute = 'test'.