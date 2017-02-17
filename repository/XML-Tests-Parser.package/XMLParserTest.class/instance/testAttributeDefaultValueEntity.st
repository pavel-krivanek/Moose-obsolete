tests
testAttributeDefaultValueEntity
	| xmlTemplate |

	xmlTemplate := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!NOTATION note PUBLIC "note">
			<!ENTITY one PUBLIC "one" "" NDATA note>
			<!ATTLIST root entity ENTITY "{1}">
		]><root entity="one" />'.

	self badNameAttributeValues do: [:each |
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