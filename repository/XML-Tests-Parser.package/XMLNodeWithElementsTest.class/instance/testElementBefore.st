tests
testElementBefore
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [| elementBefore |
				elementBefore := nil.
				node elements do: [:each |
					self assert: (node elementBefore: each) = elementBefore.
					elementBefore := each]]]