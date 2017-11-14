visiting
visitNextWith: aNodeVisitor
	(self next acceptNodeVisitor: aNodeVisitor)
		ifNil: [^ XPathASTNullNode new]
		ifNotNil: [:node |
			node isNull
				ifFalse: [previousVisited := node].
			^ node]