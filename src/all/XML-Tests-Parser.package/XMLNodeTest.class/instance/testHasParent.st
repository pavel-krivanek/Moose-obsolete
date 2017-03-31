tests
testHasParent
	| node |

	node := self newNode.
	self deny: node hasParent.

	node parent: self newNode.
	self assert: node hasParent.