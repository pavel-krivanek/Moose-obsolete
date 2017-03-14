visiting
visitPackage: aPackage

	self visitScopingEntity: aPackage.
	aPackage childNamedEntities do: [ :child | child accept: self ]
