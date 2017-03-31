tests
testHasEncoding
	| document |

	document := self newNode.
	self deny: document hasEncoding.

	document encoding: 'UTF-8'.
	self assert: document hasEncoding.

	document encoding: ''.
	self deny: document hasEncoding.