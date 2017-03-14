tests
testEntityReferenceInternalDeclarationExternallyDefined
	| declarations |

	self
		shouldnt: [
			"the rule against param entity refs in internal declarations
			shouldn't apply to declarations in external entities included
			in the subset"
			declarations := '
				<!ENTITY % name "test">
				<!ENTITY % contentModel "(#PCDATA)">
				<!ELEMENT %name; %contentModel;>'.
			(SAXHandler on: '
				<!DOCTYPE test [
					<!ENTITY % extern SYSTEM "extern.ent">
					%extern;
					<!ATTLIST test name CDATA #IMPLIED>
				]>
				<test name="value">test</test>')
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.ent' -> declarations));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.
	self
		should: [
			"the rule against param entity refs in internal declarations
			should apply to declarations in internal entities included
			in the subset even if they're internal to an external entity"
			declarations :=
				'<!ENTITY % extern2 "
					<!ENTITY &#37; name &#34;test&#34;>
					<!ENTITY &#37; contentModel &#34;(#PCDATA)&#34;>
					<!ELEMENT &#37;name; &#37;contentModel;>
				">'.
			(SAXHandler on: '
				<!DOCTYPE test [
					<!ENTITY % extern SYSTEM "extern.ent">
					%extern;
					%extern2;
					<!ATTLIST test name CDATA #IMPLIED>
				]>
				<test name="value">test</test>')
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.ent' -> declarations));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.