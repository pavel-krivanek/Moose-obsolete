tests
testSystemID
	| declaration |

	declaration := self newNode.
	self
		assert: declaration systemID = '';
		assert: (declaration systemID: 'test') == declaration;
		assert: declaration systemID = 'test'.