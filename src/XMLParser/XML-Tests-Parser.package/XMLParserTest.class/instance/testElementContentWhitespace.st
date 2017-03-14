tests
testElementContentWhitespace
	| xmlTemplate |

	"LibXML2 and Xerces allow general entity refs with empty and whitespace
	replacements and char refs to whitespace chars inbetween elements in
	elements with DTD-valited 'element content'. This tests for that behavior."
	xmlTemplate := '
		<!DOCTYPE element-content [
			<!ELEMENT element-content (one, two)>
			<!ELEMENT one EMPTY>
			<!ELEMENT two EMPTY>
			<!ENTITY empty ''''>
			<!ENTITY non-empty "non empty">
			<!ENTITY whitespace " 	
				">
		]>
		<element-content>{1}<one/>{1}<two/>{1}</element-content>'.
	(Array
		with: (String withAll: Character xmlSeparators)
		with: '&empty;'
		with: '&whitespace;'
		with: '')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: (xmlTemplate format: (Array with: each))]
				raise: XMLValidationException].
	Character xmlSeparators do: [:each |
		self
			shouldnt: [
				SAXHandler parse:
					(xmlTemplate format:
						(Array with: '&#', each asciiValue asString, ';'))]
			raise: XMLValidationException].

	(Array
		with: 'one'
		with: '2'
		with: '&non-empty;'
		with: '&#34;')
		do: [:each | | xml |
			xml := xmlTemplate format: (Array with: each).
			self
				should: [SAXHandler parse: xml]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: xml)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException].