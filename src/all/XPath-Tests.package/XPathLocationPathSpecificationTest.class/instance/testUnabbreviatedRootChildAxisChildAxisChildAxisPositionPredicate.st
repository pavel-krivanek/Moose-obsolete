tests
testUnabbreviatedRootChildAxisChildAxisChildAxisPositionPredicate
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
			assertNodeSet:
				(node xpath:
					'/child::doc/child::chapter[position()=5]/child::section[position()=2]')
			hasNodes: sections]