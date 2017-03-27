*XPath-Tests
testAncestorOrSelfAxis
	| node result |

	node := self newNode.
	result := node %%~ 'node()'.
	self
		assertNodeSet: result
		hasNode: node.

	result := node %%~ '*'.
	node isElement
		ifTrue: [
			self
				assertNodeSet: result
				hasNode: node]
		ifFalse: [self assert: result isEmpty].