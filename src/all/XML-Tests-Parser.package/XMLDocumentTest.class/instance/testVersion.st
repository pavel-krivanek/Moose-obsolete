tests
testVersion
	| document |

	document := self newNode.
	self
		assert: document version isNil;
		assert: (document version: 1.0) == document;
		assert: document version = 1.0.