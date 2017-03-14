tests
testNData
	| declaration |

	declaration := self newNode.
	self
		assert: declaration ndata = '';
		assert: (declaration ndata: 'test') == declaration;
		assert: declaration ndata = 'test'.