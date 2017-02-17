tests
testAttributeDefaultValueEnumeration
	| xmlTemplate |

	xmlTemplate := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root name (one|two|three) " {1} ">
		]><root name="one" />'.

	self
		should: [
			SAXHandler parse:
				(xmlTemplate format: (Array with: 'four'))]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on:
				(xmlTemplate format: (Array with: 'four')))
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				(xmlTemplate format: (Array with: 'one'))]
		raise: XMLValidationException.