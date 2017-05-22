tests
testAttributeDefaultFixedValueEntityReference
	"tests that general entities referenced in attribute declaration #FIXED
	default values were declared before the declaration is parsed"

	#('<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one CDATA #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		"no ID test because they can't have default values, but IDREF/IDREFS can"
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one IDREF #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two ID #REQUIRED>'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one IDREFS #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two ID #REQUIRED>'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION note PUBLIC "note.txt">
			<!ENTITY value PUBLIC "note.txt" "note.txt" NDATA note>
			<!ATTLIST one one ENTITY #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION note PUBLIC "note.txt">
			<!ENTITY value PUBLIC "note.txt" "note.txt" NDATA note>
			<!ATTLIST one one ENTITIES #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one NMTOKEN #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one NMTOKENS #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one (value) #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION value PUBLIC "note.txt">
			<!ATTLIST one one NOTATION (value) #FIXED "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">')
	do: [:each | | badSubset goodSubset badContent goodContent document|
		"the 'undeclared' entity declaration must come before
		the rest of the subset for it to be OK"
		badSubset := each, '<!ENTITY undeclared "value">'.
		goodSubset := '<!ENTITY undeclared "value">', each.
		badContent :=
			'<root>
				<one one="otherValue"/><!--override the #FIXED default value-->
				<two two="value"/><!--don''t override the #FIXED default value-->
			</root>'.
		goodContent :=
			'<root>
				<one/><!--inherit the #FIXED default value-->
				<two two="value"/><!--don''t override the #FIXED default value-->
			</root>'.

		self
			should: [
				SAXHandler parse: '<!DOCTYPE root [', badSubset, ']>', goodContent]
			raise: XMLWellFormednessException.
		self
			should: [
				(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd">', goodContent)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities:
							(Array with: 'extern.dtd' -> badSubset));
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLValidationException.

		self
			shouldnt: [
				document :=
					(XMLDOMParser on:
						'<!DOCTYPE root SYSTEM "extern.dtd">', goodContent)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> badSubset));
						resolvesExternalEntities: true;
						isValidating: false;
						parseDocument]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = '';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value'.

		self
			shouldnt: [
				document :=
					XMLDOMParser parse:
						'<!DOCTYPE root [', goodSubset, ']>', goodContent]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = 'value';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value'.

		self
			shouldnt: [
				document :=
					(XMLDOMParser on:
						'<!DOCTYPE root SYSTEM "extern.dtd">', goodContent)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> goodSubset));
						resolvesExternalEntities: true;
						parseDocument]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = 'value';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value'.

		"#FIXED default values cannot be changed"
		self
			should: [SAXHandler parse: '<!DOCTYPE root [', goodSubset, ']>', badContent]
			raise: XMLValidationException.
		self
			should: [
				(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd">', badContent)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities:
							(Array with: 'extern.dtd' -> goodSubset));
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLValidationException.

		"...unless validation is off"
		self
			shouldnt: [
				(SAXHandler on: '<!DOCTYPE root [', goodSubset, ']>', badContent)
					isValidating: false;
					parseDocument]
			raise: XMLValidationException.
		self
			shouldnt: [
				(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd">', badContent)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities:
							(Array with: 'extern.dtd' -> goodSubset));
					resolvesExternalEntities: true;
					isValidating: false;
					parseDocument]
			raise: XMLValidationException].