tests
testAttributeDeclarationNotation
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!NOTATION txtFile PUBLIC "//file.txt//">
			<!NOTATION confFile PUBLIC "//file.conf//">
			<!ELEMENT root ANY>
			<!ATTLIST root note NOTATION (txtFile | confFile ) #IMPLIED>
		]>'.
	#('txtFile' 'confFile' ' 	txtFile ' '
		confFile 	')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, '<root note="', each, '"/>']
				raise: XMLValidationException].

	#('<root note="htmlFile" />'
		'<root note="" />')
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