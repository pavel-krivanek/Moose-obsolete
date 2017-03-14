tests
testAbbreviatedChildAxisChildPredicate
	specificationDocument allNodesDo: [:node |
		"selects the chapter children of the context node that have one or more
		title children with string-value equal to Introduction"
		self
			assertNodeSet:
				(node xPath: 'child::chapter[child::title=''Introduction'']')
			hasNodes:
				(node canHaveChildren
					ifTrue: [
						(node elementsAt: 'chapter') select: [:chapter |
							(chapter elementsAt: 'title') anySatisfy: [:each |
								each stringValue = 'Introduction']]]
					ifFalse: [#()]).

		"selects the chapter children of the context node that have one or more title children"
		self
			assertNodeSet:
				(node xPath: 'child::chapter[child::title]')
			hasNodes:
				(node canHaveChildren
					ifTrue: [
						node elementsSelect: [:chapter |
							(chapter isNamed: 'chapter')
								and: [(chapter elementAt: 'title') notNil]]]
					ifFalse: [#()])]