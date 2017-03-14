tests
testElementAfter
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [| elementAfter |
				elementAfter := nil.
				node elements reverseDo: [:each |
					self assert: (node elementAfter: each) = elementAfter.
					elementAfter := each]]]