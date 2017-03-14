tests
testElements
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: node elements 
					selects: (node nodes select: [:each | each isElement])]]