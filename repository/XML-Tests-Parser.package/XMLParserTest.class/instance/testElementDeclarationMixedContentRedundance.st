tests
testElementDeclarationMixedContentRedundance
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ELEMENT one (#PCDATA | one | two | one)*>
		]>'.
	self
		should: [SAXHandler parse: dtd, '<root/>']
		raise: XMLValidationException.