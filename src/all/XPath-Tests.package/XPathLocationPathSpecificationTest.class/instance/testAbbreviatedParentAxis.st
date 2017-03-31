tests
testAbbreviatedParentAxis
	specificationDocument allNodesDo: [:node |
		"selects the parent of the context node"
		self
			assertNodeSet: (node xpath: '..')
			hasNodes:
				(node hasParent
					ifTrue: [Array with: node parent]
					ifFalse: [#()])]