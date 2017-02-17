visiting
visitContainerEntity: aContainerEntity

	self visitNamedEntity: aContainerEntity.
	
	self context shouldImportAccess ifTrue: [
		aContainerEntity outgoingReferences do: [ :ref | ref accept: self ] ].
	self context shouldImportClass ifTrue: [
		aContainerEntity types do: [ :type | type accept: self ] ].
	