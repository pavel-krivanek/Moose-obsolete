tests
testIsEmpty
	| node |

	node := self newNode.
	self assert: node isEmpty.

	node string: ' '.
	self deny: node isEmpty.

	node string: ''.
	self assert: node isEmpty.