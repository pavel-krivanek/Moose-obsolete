tests
testAttributeDeclarationNotationDeclared
	| xmlTemplate |

	xmlTemplate := '
		<!DOCTYPE root [
			<!NOTATION txtFile PUBLIC "//file.txt//">
			<!NOTATION confFile PUBLIC "//file.conf//">
			<!ELEMENT root ANY>
			<!ATTLIST root note NOTATION {1} #IMPLIED>
		]><root note="txtFile"/>'.

	"event if the value used in the attribute is declared, all values
	in the NOTATION enumeration list must be declared too"
	#('(txtFile | htmlFile)' '(zipFile)' '(htmlFile | confFile)')
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