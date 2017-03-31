*XPath-Tests
testDescendantAxis
	| nodeWithElements |

	super testDescendantAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| result |
				result := each // 'node()'.
				self
					assertNodeSet: result
					hasNodes: each descendantNodes.

				result := each // '*'.
				self
					assertNodeSet: result
					hasNodes: each descendantElements]
			ifFalse: [
				self
					assert: (each // 'node()') isEmpty;
					assert: (each // '*') isEmpty]].