handling - dtd
handleAttributeDeclaration: anElement name: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| newAttributeValidator |

	self mustNotProcessEntityOrAttributeDeclaration
		ifTrue: [^ self].

	newAttributeValidator :=
		self isStandaloneExternal
			ifTrue: [
				self doctypeDefinition
					addStandaloneExternalValidatorForAttributeIn: anElement
					named: anAttribute
					type: aType
					defaultPragma: aDefaultPragma
					defaultValue: aDefaultValue]
			ifFalse: [
				self doctypeDefinition
					addValidatorForAttributeIn: anElement
					named: anAttribute
					type: aType
					defaultPragma: aDefaultPragma
					defaultValue: aDefaultValue].

	(self isValidating
		and: [newAttributeValidator notNil])
		ifTrue: [newAttributeValidator validateAttributeDeclaration].