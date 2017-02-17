tests
testParent
	| node parent |

	node := self newNode.
	self assert: node parent isNil.

	parent := self newNode.
	self
		assert: (node parent: parent) == node;
		assert: node parent == parent.