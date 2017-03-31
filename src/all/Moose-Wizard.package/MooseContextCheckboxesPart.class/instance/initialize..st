initialize-release
initialize: aDictionaryWithEntityDependencies

	super initialize: (aDictionaryWithEntityDependencies keys collect: [:each | each asString]).
	entityDependencies := aDictionaryWithEntityDependencies.
	self setActionToCheckboxes .
	