validating
validateNotationAttributeDeclarationDefaults
	"this validation has to be delayed until the entire DTD
	is processed so notation attributes can be declared before
	the notations referenced in their enumeration list are"
	self notationAttributeValidators valuesDo: [:validator |
		validator allowedValues do: [:each |
			(self notations includesKey: each)
				ifFalse: [
					self
						errorUndeclaredNotation: each
						inAttribute: validator attribute]]]