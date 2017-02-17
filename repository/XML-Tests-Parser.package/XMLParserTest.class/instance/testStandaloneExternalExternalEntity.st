tests
testStandaloneExternalExternalEntity
	| standalone notStandalone dtd resolver document |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtd := '
		<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ENTITY % extern SYSTEM "extern.ent">
			%extern;
			<!ENTITY otherName SYSTEM "otherName.ent">
		]>'.
	resolver :=
		DTDStaticExternalEntityResolver externalEntities:
			(Array
				with: 'extern.ent' -> '<!ENTITY name SYSTEM "name.ent">'
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
		shouldnt: [
			document :=
				(XMLDOMParser on: standalone, dtd, '<test>&name;</test>')
					externalEntityResolver: resolver copy;
					resolvesExternalEntities: true;
					isValidating: false;
					parseDocument]
		raise: XMLParserException.
	self assert: document contentString = 'value'.
	"external entities only count as 'external markup declarations' in standalone
	docs if they were defined in the external DTD subset or in a parameter entity"
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: standalone, dtd, '<test>&otherName;</test>')
					externalEntityResolver: resolver copy;
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLValidationException.
	self assert: document contentString = 'otherValue'.

	self
		shouldnt: [
			document :=
				(XMLDOMParser on: notStandalone, dtd, '<test>&name;</test>')
					externalEntityResolver: resolver copy;
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLValidationException.
	self assert: document contentString = 'value'.