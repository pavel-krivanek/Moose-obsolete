searching
findElementWithID: anID
	"Works like XML DOM Level 2's getElementByID(). It will scan attributes
	identified as IDs by a DTD with '<!ATTLIST ...>' declarations or any
	attribute named 'xml:id'."

	| document doctypeDefinition |
	
	((document := self document) notNil
		and: [(doctypeDefinition := document doctypeDefinition) notNil
			and: [doctypeDefinition hasAttributeValidators]])
		ifTrue: [
			self allElementsDo: [:element |
				element hasAttributes
					ifTrue: [| attributeValidators |
						attributeValidators :=
							doctypeDefinition attributeValidatorsAt: element name.
						element attributeNodesDo: [:attribute | | attributeValidator |
							(attributeValidators notNil
								and: [
									(attributeValidator :=
										attributeValidators at: attribute name) notNil])
								ifTrue: [
									(attributeValidator isID
										and: [attribute value = anID])
										ifTrue: [^ element]]
								ifFalse: [
									(attribute name = 'xml:id'
										and: [attribute value = anID])
										ifTrue: [^ element]]]]]]
		ifFalse: [
			"default to just looking for xml:id attributes"
			self allElementsDo: [:each |
				(each hasAttributes
					and: [(each attributeAt: 'xml:id') = anID])
					ifTrue: [^ each]]].
	^ nil.