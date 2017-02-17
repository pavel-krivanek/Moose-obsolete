testing
hasUnparsedEntities
	"direct access to avoid lazy initialization"
	^ unparsedEntities notNil
		and: [unparsedEntities notEmpty]