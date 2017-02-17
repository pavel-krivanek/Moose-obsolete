tests
testAttributeDefaultValueNmtoken
	| xmlTemplate |

	xmlTemplate := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root name NMTOKEN "{1}">
		]><root name="one" />'.

	self badNmtokenAttributeValues do: [:each |
		self
			should: [		
				SAXHandler parse:
					(xmlTemplate format: (Array with: each))]
			raise: XMLValidationException.
		self
			shouldnt: [
				(SAXHandler on:
					(xmlTemplate format: (Array with: each)))
					isValidating: false;
					parseDocument]
			raise: XMLValidationException.].
	self
		shouldnt: [
			SAXHandler parse:
				(xmlTemplate format: (Array with: 'one'))]
		raise: XMLValidationException.