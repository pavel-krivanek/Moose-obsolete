*XPath-Tests
testFollowingSiblingAxis
	| nodeWithElements |

	super testFollowingSiblingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list followingSiblings |
		list := each >>> 'node()'.
		followingSiblings :=
			each hasParent
				ifTrue: [each parent nodes copyAfter: each]
				ifFalse: [self newNodeSet].
		self
			assert: list = followingSiblings;
			assertList: list hasSortOrder: XPathDocumentSortOrder.

		list := each >>> '*'.
		self
			assert: list = followingSiblings elements;
			assertList: list hasSortOrder: XPathDocumentSortOrder].