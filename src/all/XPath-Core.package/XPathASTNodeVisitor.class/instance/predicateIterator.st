private
predicateIterator
	^ predicateIterator
		ifNil: [predicateIterator := XPathASTNodeVisitorIterator null]