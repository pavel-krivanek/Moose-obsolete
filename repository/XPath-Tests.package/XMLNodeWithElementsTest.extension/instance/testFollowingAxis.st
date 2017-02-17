*XPath-Tests
testFollowingAxis
	| nodeWithElements |

	super testFollowingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list followingNodes |
		list := each >> 'node()'.
		followingNodes := 
			each hasParent
				ifTrue: [
					each parent descendantNodes copyAfter:
						(each hasChildren
							ifTrue: [each descendantNodes last]
							ifFalse: [each])]
				ifFalse: [self newNodeSet].
		self
			assert: list = followingNodes;
			assertList: list hasSortOrder: XPathDocumentSortOrder.

		list := each >> '*'.
		self
			assert: list = followingNodes elements;
			assertList: list hasSortOrder: XPathDocumentSortOrder].