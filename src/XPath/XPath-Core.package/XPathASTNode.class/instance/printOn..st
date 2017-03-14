printing
printOn: aStream
	(XPathASTSourceWritingNodeVisitor on: aStream)
		visitNode: self