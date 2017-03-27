*XPath-Tests
testFollowingAxis
	| nodeWithElements |

	super testFollowingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result followingNodes |
		result := each >> 'node()'.
		followingNodes := 
			each hasParent
				ifTrue: [
					each parent descendantNodes copyAfter:
						(each hasChildren
							ifTrue: [each descendantNodes last]
							ifFalse: [each])]
				ifFalse: [self newNodeSet].
		self
			assertNodeSet: result
			hasNodes: followingNodes.

		result := each >> '*'.
		self
			assertNodeSet: result
			hasNodes: followingNodes elements].