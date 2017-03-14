tests
testAbbreviatedDescendantAxis
	specificationDocument allNodesDo: [:node |
		"selects the para element descendants of the context node"
		self
			assertNodeSet: (node xPath: './/para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node descendantElementsNamed: 'para']
					ifFalse: [#()])]