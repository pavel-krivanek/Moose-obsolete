*XPath-Core-converting
asXPathNodeTest
	"parse the receiver as a node test where elements are the principal node type"
	^ (XPathNodeTestParser
		on: self
		for: XPathStringNodeTestParserHandler withElementPrincipalNodeType) parse