*XPath-Core-converting
asXPathNamespaceAxisNodeTest
	"parse the receiver as a node test where namespaces are the principal node type"
	^ (XPathNodeTestParser
		on: self
		for: XPathStringNodeTestParserHandler withNamespacePrincipalNodeType) parse