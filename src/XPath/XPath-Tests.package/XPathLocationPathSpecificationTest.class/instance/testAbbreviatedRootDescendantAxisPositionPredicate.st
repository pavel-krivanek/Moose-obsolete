tests
testAbbreviatedRootDescendantAxisPositionPredicate
	specificationDocument allNodesDo: [:node |
		"selects the forty-second figure element in the document"
		self
			assertNodeSet: (node xPath: '//figure[42]')
			hasNodes:
				(((specificationDocument descendantElementsNamed: 'figure')
					at: 42)
						ifNil: [#()]
						ifNotNil: [:figure | Array with: figure])]