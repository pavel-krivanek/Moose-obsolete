adding
addValidatorForAttributeIn: anElement named: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| attributes |

	attributes :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].
	(attributes includesKey: anAttribute)
		ifTrue: [^ nil].
	^ attributes
		at: anAttribute
		put:
			((DTDAttributeDefinitionParser
				element: anElement
				attribute: anAttribute
				type: aType
				defaultPragma: aDefaultPragma
				defaultValue: aDefaultValue) parse
					initializeWithValidatorsFrom: self).