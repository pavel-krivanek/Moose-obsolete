tests
testUnabbreviatedPrecedingSiblingAxisPositionPredicate
	specificationDocument allNodesDo: [:node | | chapters |
		chapters := OrderedCollection new.
		node precedingSiblingNodesDo: [:each |
			((each isElementNamed: 'chapter')
				and: [chapters isEmpty])
				ifTrue: [chapters addLast: each]].

		"selects the next chapter sibling of the context node"
		self
			assertNodeSet: (node xpath: 'preceding-sibling::chapter[position()=1]')
			hasNodes: chapters]