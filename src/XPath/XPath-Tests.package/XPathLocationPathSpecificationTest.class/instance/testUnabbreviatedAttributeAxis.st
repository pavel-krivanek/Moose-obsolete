tests
testUnabbreviatedAttributeAxis
	specificationDocument allNodesDo: [:node |
		"selects the name attribute of the context node"
		self
			assertNodeSet: (node xPath: 'attribute::name')
			hasNodes:
				((node isElement
					and: [node hasAttributes])
					ifTrue: [
						node attributeNodes select: [:each |
							each isNamed: 'name']]
					ifFalse: [#()]).

		"selects all the attributes of the context node"
		self
			assertNodeSet: (node xPath: 'attribute::*')
			hasNodes:
				(node isElement
					ifTrue: [node attributeNodes]
					ifFalse: [#()])]