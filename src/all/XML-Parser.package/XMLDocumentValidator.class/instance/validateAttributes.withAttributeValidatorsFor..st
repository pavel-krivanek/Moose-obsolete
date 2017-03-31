validating
validateAttributes: aDictionary withAttributeValidatorsFor: anElement
	| totalUnvalidatedAttributes validatedAttributes |

	totalUnvalidatedAttributes := aDictionary size.
	(self attributeValidatorsFor: anElement)
		ifNotNil: [:attributeValidators |
			attributeValidators keysAndValuesDo: [:attribute :validator |
				(aDictionary includesKey: attribute)
					ifTrue: [
						"only initialize if needed, and as an OrderedCollection that
						is only converted to a Set later if needed, for permformance"
						(validatedAttributes
							ifNil: [
								validatedAttributes :=
									OrderedCollection new: totalUnvalidatedAttributes])
							addLast: attribute.
						totalUnvalidatedAttributes := totalUnvalidatedAttributes - 1].
				validator validateAttributes: aDictionary]].

	totalUnvalidatedAttributes > 0
		ifTrue: [
			self
				unvalidatedAttributes:
					(validatedAttributes
						ifNil: [aDictionary keys]
						ifNotNil: [| validatedAttributesSet |
							validatedAttributesSet := validatedAttributes asSet.
							aDictionary keys reject: [:each |
								validatedAttributesSet includes: each]])
				inElement: anElement].