private
attributeValidatorClassForType
	"the tokenizer should have checked the type for well-formedness
	so it's only one of CDATA, ID, IDREF, IDREFS, etc"
	(type at: 1) == $C
		ifTrue: [^ XMLCDataAttributeValidator].
	(type at: 1) == $I
		ifTrue: [
			type size = 2 "'ID' size"
				ifTrue: [
					attribute = 'xml:id'
						ifTrue: [^ XMLXMLIDAttributeValidator].
					^ XMLIDAttributeValidator].
			type size = 5 "'IDREF' size"
				ifTrue: [^ XMLIDRefAttributeValidator].
			"'IDREF' size < 'IDREFS' size"
			^ XMLIDRefsAttributeValidator].
	(type at: 1) == $E
		ifTrue: [
			type size = 6 "'ENTITY' size"
				ifTrue: [^ XMLEntityAttributeValidator].
			"'ENTITY' size < 'ENTITIES' size"
			^ XMLEntitiesAttributeValidator].
	(type at: 1) == $N
		ifTrue: [
			type size = 7 "'NMTOKEN' size"
				ifTrue: [^ XMLNmtokenAttributeValidator].
			type size = 8 "'NMTOKENS' size"
				ifTrue: [^ XMLNmtokensAttributeValidator].
			"'NMTOKENS' size < 'NOTATION (' size"
			enumerationListParserClass := DTDNotationEnumerationListParser.
			^ XMLNotationEnumerationAttributeValidator].

	"otherwise it's a (one|two|...) enumeration attribute"
	enumerationListParserClass := DTDEnumerationListParser.
	^ XMLEnumerationAttributeValidator.