tests
testAbbreviatedChildAxisChildAxis
	specificationDocument allNodesDo: [:node |
		"selects all para grandchildren of the context node"
		self
			assertNodeSet: (node xPath: '*/para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [| paras |
						paras := OrderedCollection new.
						node elementsDo: [:each |
							paras addAll:
								(each elementsAt: 'para')].
						paras]
					ifFalse: [#()])]