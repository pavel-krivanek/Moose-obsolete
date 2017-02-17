tests
testCopy
	| node copy |

	(node := self newNode)
		parent: self newNode.
	copy := node copy.
	self
		deny: copy == node;
		deny: copy hasParent. 