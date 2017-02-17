tests
testElement
	| declaration |

	declaration := self newNode.
	self
		assert: declaration element = '';
		assert: (declaration element: 'test') == declaration;
		assert: declaration element = 'test'.