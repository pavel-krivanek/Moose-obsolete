initialize-release
initializeFromLabelsAndDependencies: aDictionaryWithDependencies

	self labels: (aDictionaryWithDependencies keys collect: [:each | each asString]).
	entityDependencies := aDictionaryWithDependencies.