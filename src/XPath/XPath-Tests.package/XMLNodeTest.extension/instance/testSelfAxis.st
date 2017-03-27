*XPath-Tests
testSelfAxis
	| node result |

	node := self newNode.
	result := node ~ 'node()'.
	self
		assertNodeSet: result
		hasNode: node.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	result := node ~ '*'.
	node isElement
		ifTrue: [
			self
				assertNodeSet: result
				hasNode: node.
			self
				assertNodeSet: result
				hasSortOrder: XPathLevelDocumentSortOrder]
		ifFalse: [self assert: result isEmpty].