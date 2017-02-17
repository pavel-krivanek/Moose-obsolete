instance creation
interfaceTypes: interfaceTypeCollection assignmentTypes: assignmentTypesCollection
	^self new
		mergeInterfaceTypes: interfaceTypeCollection
		assignmentTypes: assignmentTypesCollection