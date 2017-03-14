testing
hasParameterEntities
	"direct access to avoid lazy initialization"
	^ parameterEntities notNil
		and: [parameterEntities notEmpty]