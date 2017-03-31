tests
testDocumentRoot
	| node |

	node := self newNode.
	self assert: node documentRoot == node.