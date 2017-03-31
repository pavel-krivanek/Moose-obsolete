tests
testAttributeDeclarationNotationValueRedundance
	| xml |

	xml := '
		<!DOCTYPE root [
			<!NOTATION txtFile PUBLIC "//file.txt//">
			<!NOTATION confFile PUBLIC "//file.conf//">
			<!ELEMENT root ANY>
			<!ATTLIST root
				note NOTATION (txtFile | confFile | txtFile) #IMPLIED>
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