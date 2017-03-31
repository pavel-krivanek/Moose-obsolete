tests
testAttributeDefaultValueNotation
	| xmlTemplate |

	xmlTemplate := '
		<!DOCTYPE root [
			<!NOTATION one PUBLIC "one.note">
			<!NOTATION two PUBLIC "two.note">
			<!NOTATION three PUBLIC "three.note">
			<!ELEMENT root EMPTY>
			<!ATTLIST root note NOTATION (one|two|three) " {1} ">
		]><root note="one" />'.

	self
		should: [
			SAXHandler parse:
				(xmlTemplate format: (Array with: 'four'))]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				(xmlTemplate format: (Array with: 'one'))]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on:
				(xmlTemplate format: (Array with: 'four')))
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.