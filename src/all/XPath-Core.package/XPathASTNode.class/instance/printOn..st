printing
printOn: aStream
	"Prints the full AST on aStream as unabbreviated XPath source code that can
	be parsed by an XPathExpressionParser.

	To get the source code as a string without possible truncation of the
	output, use #asString instead of #printString."

	(XPathASTSourceWritingNodeVisitor on: aStream)
		visitNode: self