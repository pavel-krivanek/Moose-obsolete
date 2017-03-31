tests
testAbbreviatedRootChildAxisChildAxisChildAxisPositionPredicate
	specificationDocument allNodesDo: [:node | | sections |
		sections := OrderedCollection new.
		((specificationDocument root elementsAt: 'chapter')
			at: 5)
			ifNotNil: [:chapter |
				((chapter elementsAt: 'section')
					at: 2)
					ifNotNil: [:section |
						sections addLast: section]].

		"selects the second section of the fifth chapter of the doc
		document element"
		self
			assertNodeSet: (node xpath: '/doc/chapter[5]/section[2]')
			hasNodes: sections]