tests
testEntityReplacementStandardLiteral
	"this test comes from the XML spec"
	| dtd xml resolver doc |

	dtd := '
		<!ENTITY % YN ''"Yes"'' >
		<!ENTITY WhatHeSaid "He said %YN;" >'.
	xml := '
		<!DOCTYPE element SYSTEM ''extern.dtd''>
		<element attribute="&WhatHeSaid;"></element>'.
	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'extern.dtd'
		put: dtd.
	doc :=
		(XMLDOMParser on: xml)
			externalEntityResolver: resolver;
			resolvesExternalEntities: true;
			parseDocument.
	self assert: (doc root attributeAt: 'attribute') = 'He said "Yes"'.

	dtd := '<!ENTITY EndAttr "27''" >'.
	xml := '
		<!DOCTYPE element SYSTEM ''extern.dtd''>
		<element attribute=''a-&EndAttr;></element>'.
	(resolver := DTDStaticExternalEntityResolver new)
		externalEntityAtURI: 'extern.dtd'
		put: dtd.
	self
		should: [
			(SAXHandler on: xml)
				externalEntityResolver: resolver;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.