tests
testStandaloneExternalExternalEntityExternalSubset
	| standalone notStandalone dtd subset resolver document |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtd := '
		<!DOCTYPE test SYSTEM "extern.dtd" [
			<!ENTITY otherName SYSTEM "otherName.ent">
		]>'.
	subset := '
		<!ELEMENT test ANY>
		<!ATTLIST test name CDATA #IMPLIED>
		<!ENTITY name SYSTEM "name.ent">'.
	resolver :=
		DTDStaticExternalEntityResolver externalEntities:
			(Array
				with: 'extern.dtd' -> subset
				with: 'name.ent' -> 'value'
				with: 'otherName.ent' -> 'otherValue').
	self
		should: [
			(SAXHandler on: standalone, dtd, '<test>&name;</test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: standalone, dtd, '<test>&name;</test>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				isValidating: false;
				parseDocument]
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			(SAXHandler on: standalone, dtd, '<test/>')
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.

	self
		shouldnt: [
			document :=
				(XMLDOMParser on: notStandalone, dtd, '<test>&name;</test>')
					externalEntityResolver: resolver copy;
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLValidationException.
	self assert: document contentString = 'value'.