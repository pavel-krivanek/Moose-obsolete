testing
hasGeneralEntities
	"direct access to avoid lazy initialization"
	^ generalEntities notNil
		and: [generalEntities notEmpty]