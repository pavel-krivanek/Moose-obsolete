tests
testNamespaceUndeclared
	self
		shouldnt: [SAXHandler parse: '<prefix:root prefix:name="test"/>' usingNamespaces: false]
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<prefix:root/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root prefix:name="test"/>']
		raise: XMLNamespaceException.

	"xml is OK as a prefix, xmlns is not"
	self
		shouldnt: [SAXHandler parse: '<xml:root xml:name="test"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<xmlns:root />']
		raise: XMLNamespaceException.