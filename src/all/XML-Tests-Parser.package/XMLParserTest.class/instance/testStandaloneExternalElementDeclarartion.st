tests
testStandaloneExternalElementDeclarartion
	| standalone notStandalone dtd |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtd := '
		<!DOCTYPE test [
			<!ELEMENT test (elementContent)>
			<!ENTITY % extern "<!ELEMENT elementContent (elementContent*)>">
			%extern;
		]>'.
	"the externally defined element can't have whitespace around its element 
	ontent, but the internally defined one (test) can"
	self
		should: [
			SAXHandler parse:
				standalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>']
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on:
				standalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>')
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				standalone, dtd, '<test> <elementContent><elementContent/></elementContent> </test>']
		raise: XMLValidationException.

	self
		shouldnt: [
			SAXHandler parse:
				notStandalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>']
		raise: XMLValidationException.