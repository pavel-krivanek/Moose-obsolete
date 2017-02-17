tests
testPublicID
	| declaration |

	declaration := self newNode.
	self
		assert: declaration publicID = '';
		assert: (declaration publicID: 'test') == declaration;
		assert: declaration publicID = 'test'.