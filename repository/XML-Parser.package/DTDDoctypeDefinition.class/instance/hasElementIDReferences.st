testing
hasElementIDReferences
	"direct access to avoid lazy initialization"
	^ elementIDValidator notNil
		and: [elementIDValidator hasIDReferences]