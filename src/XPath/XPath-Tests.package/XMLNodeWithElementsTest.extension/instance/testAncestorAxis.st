*XPath-Tests
testAncestorAxis
	| nodeWithElements |

	super testAncestorAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result |
		result := each %% 'node()'.
		self
			assertNodeSet: result
			hasNodes: each ancestorNodes.

		result := each %% '*'.
		self
			assertNodeSet: result
			hasNodes: each ancestorElements].