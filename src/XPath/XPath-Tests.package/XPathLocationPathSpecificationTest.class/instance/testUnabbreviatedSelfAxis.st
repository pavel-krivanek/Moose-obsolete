tests
testUnabbreviatedSelfAxis
	specificationDocument allNodesDo: [:node | | result |
		"selects the context node if it is a para element, and otherwise
		selects nothing"
		result := node xpath: 'self::para'.
		(node isElementNamed: 'para')
			ifTrue: [
				self
					assertNodeSet: result
					hasNode: node]
			ifFalse: [self assert: result isEmpty]]