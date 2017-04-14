tests
testEntityExternalResolutionParameterInDeclaration
	"test the handling of external parameter entity references in declarations"
	| invalidXML validXML resolver |

	invalidXML := '
		<!DOCTYPE one SYSTEM "extern.dtd">
		<one><two/><four/></one>'.
	validXML := '
		<!DOCTYPE one SYSTEM "extern.dtd">
		<one><two/><three/><four/></one>'.
	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'extern.dtd'
		put:
			'<!ENTITY % two SYSTEM "two.ent">
			<!ENTITY % three SYSTEM "three.ent">
			<!ENTITY % four SYSTEM "four.ent">
			<!ELEMENT one (%two; , %three; , %four;)>
			<!ELEMENT two EMPTY>
			<!ELEMENT three EMPTY>
			<!ELEMENT four EMPTY>'.
	resolver
		externalEntityAtURI: 'two.ent'
		put:
			'<?xml encoding="UTF-8"?>
			two'.
	resolver
		externalEntityAtURI: 'three.ent'
		put: 'three'.
	resolver
		externalEntityAtURI: 'four.ent'
		put: '<?xml encoding="UTF-8"?>four'.
	self
		should: [
			(SAXHandler on: invalidXML)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: validXML)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.