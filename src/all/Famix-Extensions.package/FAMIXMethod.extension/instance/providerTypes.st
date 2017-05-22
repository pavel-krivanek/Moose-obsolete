*famix-extensions-nav All Dependencies
providerTypes
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoingAssociations atScope: FAMIXType)
		withoutSelfLoops