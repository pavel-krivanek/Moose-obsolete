tests
testAbbreviatedAttributeAxis
	specificationDocument allNodesDo: [:node |
		"selects the name attribute of the context node"
		self
			assertNodeSet: (node xPath: '@name')
			hasNodes:
				(node isElement
					ifTrue: [node attributeNodes select: [:each | each isNamed: 'name']]
					ifFalse: [#()]).

		"selects all the attributes of the context node"
		self
			assertNodeSet: (node xPath: '@*')
			hasNodes:
				(node isElement
					ifTrue: [node attributeNodes]
					ifFalse: [#()])]