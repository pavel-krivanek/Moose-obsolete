tests
testElementEmptyDeclaration
	| dtd |

	dtd := '<!DOCTYPE empty [<!ELEMENT empty EMPTY>]>'.

	#('<empty/>'
		'<empty></empty>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	"the spec says EMPTY elements can't have any content, even whitespace,
	comments or PIs"
	#('<empty><empty/></empty>'
		'<empty>non-empty</empty>'
		'<empty> </empty>'
		'<empty>	</empty>'
		'<empty>
</empty>'
		'<empty>&#32;</empty>' "Character space asciiValue"
		'<empty>&#9;</empty>' "Character tab asciiValue"
		'<empty>&#10;</empty>' "Character lf asciiValue"
		'<empty>&#13;</empty>' "Character cr asciiValue"
		'<empty><![CDATA[non-empty]]></empty>'
		'<empty><!--non-empty--></empty>'
		'<empty><?non empty?></empty>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: dtd, each)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException].