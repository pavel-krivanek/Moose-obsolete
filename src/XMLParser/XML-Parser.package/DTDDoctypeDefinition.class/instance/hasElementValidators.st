testing
hasElementValidators
	"optimized to avoid lazy initialization"
	elementValidators == nil
		ifTrue: [^ false].
	^ elementValidators size > 0.