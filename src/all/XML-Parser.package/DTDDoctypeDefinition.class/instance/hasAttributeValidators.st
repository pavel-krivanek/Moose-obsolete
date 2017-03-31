testing
hasAttributeValidators
	"optimized to avoid lazy initialization"
	attributeValidators == nil
		ifTrue: [^ false].
	^ attributeValidators size > 0.