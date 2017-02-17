testing
hasNotationAttributeValidators
	"direct access to avoid lazy initialization"
	^ notationAttributeValidators notNil
		and: [notationAttributeValidators notEmpty]