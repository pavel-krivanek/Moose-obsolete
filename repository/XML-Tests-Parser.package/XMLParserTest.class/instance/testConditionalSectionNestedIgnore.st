tests
testConditionalSectionNestedIgnore
	| xml dtdTemplate dtd |

	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	dtdTemplate := '
		<![ IGNORE [
			<!--ignored terminator {1} -->
			<![ INCLUDE [
				<!ENTITY % comment "<!--ignored terminator {1} -->">
				%comment;
			]]>
			%comment;
		]]>'.
	self
		shouldnt: [
			dtd := dtdTemplate format: (Array with: ']]').
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> dtd));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.
	self
		should: [
			dtd := dtdTemplate format: (Array with: ']]>').
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> dtd));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.