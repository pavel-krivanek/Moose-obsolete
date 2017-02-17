tests
testElementsAddedInPlace
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [
				(Array
					with: node elements
					with: node elements reversed) do: [:elements |
					node addNodes: elements.
					self
						assertList: node elements 
						selects: elements]]]