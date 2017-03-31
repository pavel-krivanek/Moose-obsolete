tests
testStandaloneExternalExternalEntityRedundance
	| standaloneXML resolver document |

	standaloneXML :=
		'<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name CDATA #IMPLIED>
			<!ENTITY name "value">
			<!ENTITY % extern SYSTEM "extern.ent">
			%extern;
		]>
		<test>&name;</test>'.
	resolver :=
		DTDStaticExternalEntityResolver externalEntities:
			(Array
				with: 'extern.ent' -> '<!ENTITY name SYSTEM "name.ent">'
				with: 'name.ent' -> 'otherValue').
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: standaloneXML)
					externalEntityResolver: resolver copy;
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLValidationException.
	self assert: document contentString = 'value'.