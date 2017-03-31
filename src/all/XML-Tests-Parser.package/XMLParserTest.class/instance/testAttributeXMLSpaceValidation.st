tests
testAttributeXMLSpaceValidation
	"xml:space must be declared an enumeration type with only 'default' and
	'preserve' as allowed values"
	| xmlTemplate xml |

	xmlTemplate := '
		<!DOCTYPE whitespace [
			<!ELEMENT whitespace EMPTY>
			<!ATTLIST whitespace xml:space {1} #IMPLIED>
		]>
		<whitespace></whitespace>'.
	#('CDATA'
		'ID'
		'IDREF'
		'IDREFS'
		'ENTITY'
		'ENTITIES'
		'(default|preserve|other)'
		'(default|preserve|default)'
		'NOTATION (default|preserve)')
		do: [:each |
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

	#('(default|preserve)' '(preserve|default)' '(default)' '(preserve)')
		do: [:each |
			xml := xmlTemplate format: (Array with: each).
			self
				shouldnt: [SAXHandler parse: xml]
				raise: XMLValidationException].