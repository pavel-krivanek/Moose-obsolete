processing
processAttributes: aDictionary
	| attributeAssociation normalizedValue |

	attributeAssociation :=
		aDictionary
			associationAt: self attribute
			ifAbsent: [
				self defaultValidator processedDefaultForAbsentAttributeValue
					ifNotNil: [:defaultValue |
						aDictionary
							at: self attribute
							put: defaultValue].
				^ self].

	self mustFurtherNormalizeAttributeValue
		ifTrue: [
			normalizedValue :=
				self furtherNormalizeAttributeValue:
					attributeAssociation value]
		ifFalse: [normalizedValue := attributeAssociation value].
	attributeAssociation value:
		(self defaultValidator processedDefaultForPresentAttributeValue:
			normalizedValue).