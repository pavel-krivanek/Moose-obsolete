tests
testConditionalSectionInInternalSubsetExternallyDefined
	| conditionalSections |

	conditionalSections := '
		<![INCLUDE[<!ELEMENT test ANY>]]>
		<![IGNORE[<!ELEMENT test EMPTY>]]>'.
	self
		shouldnt: [
			"the rule against internal subset include/ignore sections
			shouldn't apply to external entities included in the subset"
			(SAXHandler on: '
				<!DOCTYPE test [
					<!ENTITY % extern SYSTEM "extern.ent">
					%extern;
					<!ATTLIST test name CDATA #IMPLIED>
				]>
				<test name="value">test</test>')
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.ent' -> conditionalSections));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.
	self
		should: [| entityReplacementMixedSections |
			"the rule against internal subset include/ignore sections
			should apply to internal entities included in the subset
			if they're internal even to an external entity"
			entityReplacementMixedSections :=
				'<!ENTITY % extern2 "', conditionalSections, '">'.
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
						(Array with: 'extern.ent' -> entityReplacementMixedSections));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.