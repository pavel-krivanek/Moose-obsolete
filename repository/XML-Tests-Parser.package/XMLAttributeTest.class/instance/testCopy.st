tests
testCopy
	| node copy |

	(node := self newNode)
		element: self newElement.
	copy := node copy.
	self
		deny: copy == node;
		assert: copy element isNil.