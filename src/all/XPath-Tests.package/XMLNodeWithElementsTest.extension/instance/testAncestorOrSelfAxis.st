*XPath-Tests
testAncestorOrSelfAxis
	| nodeWithElements |

	super testAncestorOrSelfAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | result |
		result := each %%~ 'node()'.
		self
			assertNodeSet: result
			hasNodes: (each ancestorNodes copyWith: each).

		result := each %%~ '*'.
		each isElement
			ifTrue: [
				self
					assertNodeSet: result
					hasNodes: (each ancestorElements copyWith: each)]
			ifFalse: [
				self
					assertNodeSet: result
					hasNodes: each ancestorElements]].