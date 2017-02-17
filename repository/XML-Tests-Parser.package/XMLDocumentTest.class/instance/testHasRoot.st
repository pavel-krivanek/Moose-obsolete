tests
testHasRoot
	| nodeWithElements |

	self deny: self newNode hasRoot.
	nodeWithElements := self newNodeWithElements.

	self assert: nodeWithElements hasRoot.

	nodeWithElements removeNode: nodeWithElements root.
	self deny: nodeWithElements hasRoot.