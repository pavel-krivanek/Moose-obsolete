tests
testNamespaceParsing
	self
		shouldnt: [SAXHandler parse: self addressBookNamespacedXML]
		raise: XMLException.
	self
		shouldnt: [
			SAXHandler
				parse: self addressBookNamespacedXML
				usingNamespaces: false]
		raise: XMLException.

	self
		shouldnt: [SAXHandler parse: self addressBookNamespacePrefixedXML]
		raise: XMLException.
	self
		shouldnt: [
			SAXHandler
				parse: self addressBookNamespacePrefixedXML
				usingNamespaces: false]
		raise: XMLException.