tests
testNamespaceDeclarationBadPrefix
	self
		should: [SAXHandler parse: '<root xmlns:invalid:prefix="invalidNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root xmlns::invalidprefix="invalidNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root xmlns:invalidprefix:="invalidNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<:invalidname />']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<invalidname: />']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root :invalidname="test" />']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root invalidname:="test" />']
		raise: XMLNamespaceException.