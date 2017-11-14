tests
testIsExternal
	| declaration |

	declaration := self newNode.
	self deny: declaration isExternal.

	declaration systemID: 'test'.
	self assert: declaration isExternal.

	declaration publicID: 'test'.
	self assert: declaration isExternal.

	declaration systemID: ''.
	self assert: declaration isExternal.

	declaration publicID: ''.
	self deny: declaration isExternal.