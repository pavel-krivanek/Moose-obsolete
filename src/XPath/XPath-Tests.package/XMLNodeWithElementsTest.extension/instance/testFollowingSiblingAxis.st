*XPath-Tests
testFollowingSiblingAxis
	| nodeWithElements |

	super testFollowingSiblingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result followingSiblings |
		result := each >>> 'node()'.
		followingSiblings :=
			each hasParent
				ifTrue: [each parent nodes copyAfter: each]
				ifFalse: [self newNodeSet].
		self
			assertNodeSet: result
			hasNodes: followingSiblings.
		self
			assertNodeSet: result
			hasSortOrder: XPathLevelDocumentSortOrder.

		result := each >>> '*'.
		self
			assertNodeSet: result
			hasNodes: followingSiblings elements.
		self
			assertNodeSet: result
			hasSortOrder: XPathLevelDocumentSortOrder].