*famix-extensions-nav All Dependencies
clientTypes
	<MSEProperty: #clientTypes type: #FAMIXType> <multivalued> <derived>
	<MSEComment: 'All types that depend on the receiver'>
	
	^ self queryAllIncomingAssociations atTypeScope withoutSelfLoops