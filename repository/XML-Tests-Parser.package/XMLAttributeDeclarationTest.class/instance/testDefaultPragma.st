tests
testDefaultPragma
	| declaration |

	declaration := self newNode.
	self
		assert: declaration defaultPragma = '';
		assert: (declaration defaultPragma: 'REQUIRED') == declaration;
		assert: declaration defaultPragma = 'REQUIRED'.