tests
testEntityExternalResolutionGeneral
	| xml entities document |

	xml := '
		<!DOCTYPE test [
			<!ENTITY extern SYSTEM "/base/extern.ent">
			<!ENTITY extern2 SYSTEM "/base/extern2.ent">
			<!ENTITY extern3 SYSTEM "/base/extern3.ent">
		]>
		<test>&extern;&extern2;&extern3;</test>'.
	entities :=
		Array
			with:
				'/base/extern.ent' ->
					'<?xml version="1.0" encoding="UTF-8"?>one'
			with:
				'/base/extern2.ent' ->
					'<?xml encoding="UTF-8"?>two'
			with: '/base/extern3.ent' -> 'three'.
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
			document :=
				(XMLDOMParser on: xml)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities: entities);
					resolvesExternalEntities: true;
					parseDocument]
		raise: XMLParserException.
	self assert: document root contentString = 'onetwothree'.