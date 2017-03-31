testing
hasNotations
	"direct access to avoid lazy initialization"
	^ notations notNil
		and: [notations notEmpty]