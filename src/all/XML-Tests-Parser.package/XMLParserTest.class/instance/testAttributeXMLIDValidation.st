tests
testAttributeXMLIDValidation
	| xml xmlWithDuplicateID |

	xml := '<a xml:id="one"><b xml:id="two"/></a>'.
	xmlWithDuplicateID := '<a xml:id="one"><b xml:id="one"/></a>'.
	self
		shouldnt: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: xmlWithDuplicateID]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: xmlWithDuplicateID)
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.