private
argumentIterator
	^ argumentIterator
		ifNil: [argumentIterator := XPathASTNodeVisitorIterator null]