tests
testIsStandalone
	| document |

	document := self newNode.
	self
		deny: document isStandalone;
		assert: (document isStandalone: true) == document;
		assert: document isStandalone.