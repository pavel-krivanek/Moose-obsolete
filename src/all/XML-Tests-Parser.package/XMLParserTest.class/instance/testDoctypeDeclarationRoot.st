tests
testDoctypeDeclarationRoot
	| xmlWithInvalidRoot xmlWithValidRoot |

	xmlWithInvalidRoot := '<!DOCTYPE root><invalidRoot/>'.
	xmlWithValidRoot := '<!DOCTYPE root><root/>'.
	self
		should: [SAXHandler parse: xmlWithInvalidRoot]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse: xmlWithInvalidRoot
				usingNamespaces: false
				validation: false]
		raise: XMLValidationException.
	self
		shouldnt: [SAXHandler parse: xmlWithValidRoot]
		raise: XMLValidationException.