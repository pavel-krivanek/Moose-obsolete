testing
hasCurrentElementValidator
	"optimized to avoid lazy initialization"
	elementValidatorStack == nil
		ifTrue: [^ false].
	^ elementValidatorStack size > 0.