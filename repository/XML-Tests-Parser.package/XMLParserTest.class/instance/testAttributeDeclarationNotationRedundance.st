tests
testAttributeDeclarationNotationRedundance
	"only one notation attribute is allowed per element"
	| xml |

	xml := '
		<!DOCTYPE root [
			<!NOTATION txtFile PUBLIC "//file.txt//">
			<!NOTATION confFile PUBLIC "//file.conf//">
			<!NOTATION txtFile2 PUBLIC "//file.txt//">
			<!NOTATION confFile2 PUBLIC "//file.conf//">
			<!ELEMENT root ANY>
			<!ATTLIST root
				note NOTATION (txtFile | confFile) #IMPLIED
				note2 NOTATION (txtFile2 | confFile2) #IMPLIED>
		]><root/>'.
	self
		should: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.