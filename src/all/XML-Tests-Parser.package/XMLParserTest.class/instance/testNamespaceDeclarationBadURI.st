tests
testNamespaceDeclarationBadURI
	self
		should: [SAXHandler parse: '<root xmlns:empty=""/>' usingNamespaces: true]
		raise: XMLNamespaceException.

	"Cannot change xmlns or xml prefixes"
	self
		should: [SAXHandler parse: '<root xmlns:xmlns="newNS"/>' usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root xmlns:xml="newNS" />' usingNamespaces: true]
		raise: XMLNamespaceException.

	"Redundant xml prefix mapping is ok, but xmlns is not"
	self
		shouldnt: [
			SAXHandler
				parse: '<root xmlns:xml="', XMLNamespaceScope xmlNamespaceURI, '"/>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [
			SAXHandler
				parse: '<root xmlns:xmlns="', XMLNamespaceScope xmlnsNamespaceURI, '"/>'
				usingNamespaces: true]
		raise: XMLNamespaceException.