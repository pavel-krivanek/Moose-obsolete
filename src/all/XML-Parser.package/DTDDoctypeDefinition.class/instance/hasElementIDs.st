testing
hasElementIDs
	"direct access to avoid lazy initialization"
	^ elementIDValidator notNil
		and: [elementIDValidator hasIDs]