validating
validateAttributes: aDictionary
	| attributeAssociation wasAbsent |

	wasAbsent := false.
	attributeAssociation :=
		aDictionary
			associationAt: self attribute
			ifAbsent: [
				wasAbsent := true.
				self defaultValidator validatedDefaultForAbsentAttributeValue
					ifNil: [^ self]
					ifNotNil: [:defaultValue |
						aDictionary add: self attribute -> defaultValue]].

	wasAbsent
		ifFalse: [| normalizedValue |
			self mustFurtherNormalizeAttributeValue
				ifTrue: [
					normalizedValue :=
						self furtherNormalizeAttributeValue:
							attributeAssociation value.
					self isStandaloneExternal
						ifTrue: [
							normalizedValue size = attributeAssociation value size
								ifFalse: [
									self errorNormalizedStandaloneExternalAttribute]]]
				ifFalse: [normalizedValue := attributeAssociation value].
			attributeAssociation value:
				(self defaultValidator validatedDefaultForPresentAttributeValue:
					normalizedValue)].

	self validateAttributeValue: attributeAssociation value.