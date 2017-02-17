tests
testType
	| declaration |

	declaration := self newNode.
	self
		assert: declaration type = '';
		assert: (declaration type: 'CDATA') == declaration;
		assert: declaration type = 'CDATA'.