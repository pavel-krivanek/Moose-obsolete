*famix-extensions-nav All Dependencies
clientTypes
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment:
		'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncomingAssociations atScope: FAMIXType)
		withoutSelfLoops