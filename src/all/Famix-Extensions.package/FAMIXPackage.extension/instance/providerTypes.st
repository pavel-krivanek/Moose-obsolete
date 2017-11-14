*famix-extensions-nav All Dependencies
providerTypes
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FAMIXType) withoutSelfLoops