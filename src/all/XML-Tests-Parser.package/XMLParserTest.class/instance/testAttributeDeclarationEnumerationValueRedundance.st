tests
testAttributeDeclarationEnumerationValueRedundance
	| xml |

	xml := '
		<!DOCTYPE root [
			<!ELEMENT root ANY>
			<!ATTLIST root number ( one | two | one ) #IMPLIED>
		]><root/>'.
	self
		should: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.