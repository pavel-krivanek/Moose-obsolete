tests
testAttributeDeclarationRedundance
	"additional declarations for the same attribute are ignored"

	| dtd resolver |

	dtd := '
		<!DOCTYPE root SYSTEM "extern.dtd" [
			<!ELEMENT root EMPTY>
			<!ATTLIST root redundant CDATA #IMPLIED>
			<!ATTLIST root redundant IDREF #FIXED "two">
		]>'.
	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'extern.dtd'
		put: '<!ATTLIST root redundant ENTITY #REQUIRED>'.
	#('<root redundant="one"/>'
		'<root/>')
		do: [:each |
			self
				shouldnt: [
					(SAXHandler on: dtd, each)
						externalEntityResolver: resolver;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException].