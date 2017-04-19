private
attributeValidatorClassForType
	"the tokenizer should have checked the type for well-formedness
	so it's only one of CDATA, ID, IDREF, IDREFS, etc"
	
	| nextChar |

	(nextChar := type at: 1) == $C
		ifTrue: [^ XMLCDataAttributeValidator].
	nextChar == $I
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
	nextChar == $E
		ifTrue: [
			type size = 6 "'ENTITY' size"
				ifTrue: [^ XMLEntityAttributeValidator].
			"'ENTITY' size < 'ENTITIES' size"
			^ XMLEntitiesAttributeValidator].
	nextChar == $N
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