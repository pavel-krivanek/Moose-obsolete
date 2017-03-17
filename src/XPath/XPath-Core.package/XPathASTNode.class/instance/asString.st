converting
asString
	"returns an XPath source code string for the AST capable of being
	parsed by an XPathExpressionParser, but without potentially truncating
	it like #printString can"

	^ XPathASTSourceWritingNodeVisitor new
		visitNode: self;
		contents