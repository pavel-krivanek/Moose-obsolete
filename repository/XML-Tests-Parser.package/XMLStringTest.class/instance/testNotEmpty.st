tests
testNotEmpty
	| node |

	node := self newNode.
	self deny: node notEmpty.

	node string: ' '.
	self assert: node notEmpty.

	node string: ''.
	self deny: node notEmpty.