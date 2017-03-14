tests
testAbbreviatedParentAxisAttribute
	specificationDocument allNodesDo: [:node |
		"selects the lang attribute of the parent of the context node"
		self
			assertNodeSet: (node xPath: '../@lang')
			hasNodes:
				((node hasParent
					and: [node parent isElement
						and: [node parent hasAttributes]])
					ifTrue: [
						(node parent attributeNodes select: [:each |
							each isNamed: 'lang'])]
					ifFalse: [#()])]