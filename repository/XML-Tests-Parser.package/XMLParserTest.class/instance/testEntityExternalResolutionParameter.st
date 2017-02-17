tests
testEntityExternalResolutionParameter
	| xml entities document |

	xml := '
		<!DOCTYPE test [
			<!ENTITY % extern SYSTEM "/base/extern.ent">
			%extern;
			%extern2;
			%extern3;
		]>
		<test>&extern4;</test>'.
	entities :=
		Array
			with:
				'/base/extern.ent' ->
					'<?xml version="1.0" encoding="UTF-8"?>
					<!ENTITY % extern2 SYSTEM "sub/extern2.ent">'
			with:
				'/base/sub/extern2.ent' ->
					'<?xml encoding="UTF-8"?>
					<!ENTITY % extern3 SYSTEM "./extern3.ent">'
			with:
				'/base/sub/extern3.ent' ->
					'<!ENTITY % extern5 SYSTEM "./extern5.ent">
					<!ENTITY extern4 "%extern5;">'
			with:
				'/base/sub/extern5.ent' ->
					'<?xml encoding="UTF-8"?>test'.
	1 to: entities size - 1 do: [:i |
		self
			should: [
				(SAXHandler on: xml)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities:
							(entities copyFrom: 1 to: i));
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLParserException].
	self
		should: [
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities: entities);
				resolvesExternalEntities: false;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities: entities);
				resolvesExternalEntities: false;
				isValidating: false;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			document :=
				(XMLDOMParser on: xml)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities: entities);
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLParserException.
	self assert: document root contentString = 'test'.