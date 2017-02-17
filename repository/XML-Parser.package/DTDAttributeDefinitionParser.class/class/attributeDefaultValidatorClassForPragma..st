private
attributeDefaultValidatorClassForPragma: aDefaultPragma
	"the default pragma should have been checked for well-formedness by the
	tokenizer so it's either empty, 'FIXED', 'REQUIRED', or 'IMPLIED'"
	aDefaultPragma size > 0
		ifTrue: [
			(aDefaultPragma at: 1) == $F
				ifTrue: [^ XMLAttributeFixedValueDefaultValidator].
			(aDefaultPragma at: 1) == $I
				ifTrue: [^ XMLAttributeImpliedDefaultValidator].
			^ XMLAttributeRequiredDefaultValidator].
	^ XMLAttributeValueDefaultValidator.