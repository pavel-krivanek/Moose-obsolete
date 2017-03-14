tests
testAttributeDefaultValueEntityReference
	"tests that general entities referenced in attribute declaration default
	values were declared before the declaration is parsed"

	#('<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one CDATA "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">'
		"no ID test because they can't have default values, but IDREF/IDREFS can"
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one IDREF "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two ID #REQUIRED>'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one IDREFS "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two ID #REQUIRED>'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION note PUBLIC "note.txt">
			<!ENTITY value PUBLIC "note.txt" "note.txt" NDATA note>
			<!ATTLIST one one ENTITY "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION note PUBLIC "note.txt">
			<!ENTITY value PUBLIC "note.txt" "note.txt" NDATA note>
			<!ATTLIST one one ENTITIES "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one NMTOKEN "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA #FIXED "value">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one NMTOKENS "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!ATTLIST one one (value) "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">'
		'<!ELEMENT root (one,two)>
			<!ELEMENT one EMPTY>
			<!NOTATION value PUBLIC "note.txt">
			<!ATTLIST one one NOTATION (value) "&undeclared;">
			<!ELEMENT two EMPTY>
			<!ATTLIST two two CDATA "otherValue">')
	do: [:each | | badSubset goodSubset content document|
		"the 'undeclared' entity declaration must come before
		the rest of the subset for it to be OK"
		badSubset := each, '<!ENTITY undeclared "value">'.
		goodSubset := '<!ENTITY undeclared "value">', each.
		content :=
			'<root>
				<one/><!--inherit the default value-->
				<two two="value"/><!--override the default value-->
			</root>'.

		self
			should: [SAXHandler parse: '<!DOCTYPE root [', badSubset, ']>', content]
			raise: XMLValidationException.
		self
			should: [
				(SAXHandler on: '<!DOCTYPE root SYSTEM "extern.dtd">', content)
					externalEntityResolver:
						(DTDStaticExternalEntityResolver externalEntities:
							(Array with: 'extern.dtd' -> badSubset));
					resolvesExternalEntities: true;
					parseDocument]
			raise: XMLValidationException.

		self
			shouldnt: [
				document :=
					(XMLDOMParser on: '<!DOCTYPE root [', badSubset, ']>', content)
						isValidating: false;
						parseDocument]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = '';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value'.
		self
			shouldnt: [
				document :=
					(XMLDOMParser on: '<!DOCTYPE root SYSTEM "extern.dtd">', content)
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
					XMLDOMParser parse: '<!DOCTYPE root [', goodSubset, ']>', content]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = 'value';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value'.

		self
			shouldnt: [
				document :=
					(XMLDOMParser on: '<!DOCTYPE root SYSTEM "extern.dtd">', content)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> goodSubset));
						resolvesExternalEntities: true;
						parseDocument]
			raise: XMLValidationException.
		self
			assert: ((document root elementAt: 'one') attributeAt: 'one') = 'value';
			assert: ((document root elementAt: 'two') attributeAt: 'two') = 'value']