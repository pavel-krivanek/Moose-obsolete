*XPath-Tests
testPrecedingAxis
	| nodeWithElements |

	super testPrecedingAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result precedingNodes |
		result := each << 'node()'.
		precedingNodes :=
			each hasParent
				ifTrue: [each parent descendantNodes copyUpTo: each]
				ifFalse: [self newNodeSet].
		self
			assertNodeSet: result
			hasNodes: precedingNodes.

		result := each << '*'.
		self
			assertNodeSet: result
			hasNodes: precedingNodes elements].