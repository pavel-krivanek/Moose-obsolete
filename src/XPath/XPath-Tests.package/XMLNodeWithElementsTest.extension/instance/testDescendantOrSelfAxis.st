*XPath-Tests
testDescendantOrSelfAxis
	| nodeWithElements |

	super testDescendantOrSelfAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| result |
				result := each //~ 'node()'.
				self
					assertNodeSet: result
					hasNodes: each allNodes.

				result := each //~ '*'.
				each isElement
					ifTrue: [
						self
							assertNodeSet: result
							hasNodes: each allElements]
					ifFalse: [
						self
							assertNodeSet: result
							hasNodes: each descendantElements]]
			ifFalse: [
				self
					assertNodeSet: (each //~ 'node()')
					hasNode: each.
				each isElement
					ifTrue: [
						self
							assertNodeSet: (each //~ '*')
							hasNode: each]
					ifFalse: [self assert: (each //~ '*') isEmpty]]].