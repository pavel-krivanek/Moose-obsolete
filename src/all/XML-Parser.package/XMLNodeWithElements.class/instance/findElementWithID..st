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
			self allElementsDo: [:each |
				each hasAttributes
					ifTrue: [
						(doctypeDefinition attributeValidatorsAt: each name)
							ifNil: [
								(each hasUndeclaredID: anID)
									ifTrue: [^ each]]
							ifNotNil: [:attributeValidators |
								(each
									hasUndeclaredOrDeclaredID: anID
									declaredWith: attributeValidators)
									ifTrue: [^ each]]]]]
		ifFalse: [
			self allElementsDo: [:each |
				(each hasAttributes
					and: [each hasUndeclaredID: anID])
					ifTrue: [^ each]]].
	^ nil.