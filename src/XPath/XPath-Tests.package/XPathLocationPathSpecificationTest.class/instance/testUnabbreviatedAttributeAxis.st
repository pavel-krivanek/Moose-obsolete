tests
testUnabbreviatedAttributeAxis
	specificationDocument allNodesDo: [:node |
		"selects the name attribute of the context node"
		self
			assertNodeSet: (node xpath: 'attribute::name')
			hasNodes:
				((node isElement
					and: [node hasAttributes])
					ifTrue: [
						node attributeNodes select: [:each |
							each isNamed: 'name']]
					ifFalse: [#()]).

		"selects all the attributes of the context node"
		self
			assertNodeSet: (node xpath: 'attribute::*')
			hasNodes:
				(node isElement
					ifTrue: [node attributeNodes]
					ifFalse: [#()])]