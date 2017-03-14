tests
testEntityReplacementStandard
	"this test comes from the XML spec"
	| dtd xml doc |

	dtd := '
		<!ENTITY % pub    "&#xc9;ditions Gallimard" >
		<!ENTITY   rights "All rights reserved" >
		<!ENTITY   book   "La Peste: Albert Camus, &#xA9; 1947 %pub;. &rights;" >'.
	xml := '
		<!DOCTYPE test SYSTEM ''extern.dtd''>
		<test>&book;</test>'.
	doc :=
		(XMLDOMParser on: xml)
			externalEntityResolver:
				(DTDStaticExternalEntityResolver externalEntities:
					(Array with: 'extern.dtd' -> dtd));
			resolvesExternalEntities: true;
			parseDocument.
	self assert:
		doc root contentString =
			('La Peste: Albert Camus, ', 16rA9 asCharacter asString, ' 1947 ',
				16rC9 asCharacter asString, 'ditions Gallimard. All rights reserved').