tests
testStandaloneExternalElementDeclarartionExternalSubset
	| standalone notStandalone dtd resolver |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtd := '
		<!DOCTYPE test SYSTEM "extern.dtd" [
			<!ELEMENT test (elementContent)>
		]>'.
	resolver :=
		DTDStaticExternalEntityResolver externalEntities:
			(Array with: 'extern.dtd' -> '<!ELEMENT elementContent (elementContent*)>').
	"the externally defined element can't have whitespace around its element 
	ontent, but the internally defined one (test) can"
	self
		should: [
			(SAXHandler on:
				standalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on:
				standalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on:
				standalone, dtd, '<test> <elementContent><elementContent/></elementContent> </test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.

	self
		shouldnt: [
			(SAXHandler on:
				notStandalone, dtd, '<test><elementContent> <elementContent/> </elementContent></test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.