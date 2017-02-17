private
stepIterator
	^ stepIterator
		ifNil: [stepIterator := XPathASTNodeVisitorIterator null]