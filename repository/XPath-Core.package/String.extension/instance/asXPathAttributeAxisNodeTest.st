*XPath-Core-converting
asXPathAttributeAxisNodeTest
	"parse the receiver as a node test where attributes are the principal node type"
	^ (XPathNodeTestParser
		on: self
		for: XPathStringNodeTestParserHandler withAttributePrincipalNodeType) parse