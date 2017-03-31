visiting
visitScopingEntity: aScopingEntity

	self visitContainerEntity: aScopingEntity.
	
	aScopingEntity childScopes do: [ :cs | cs accept: self ].
	self context shouldImportGlobalVariable ifTrue: [
		aScopingEntity globalVariables do: [ :glv | glv accept: self ].].