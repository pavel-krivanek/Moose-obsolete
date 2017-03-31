accessing
preferredClasses: aCollectionOrNil
	PreferredClasses :=
		aCollectionOrNil
			ifNotNil: [aCollectionOrNil asSet]