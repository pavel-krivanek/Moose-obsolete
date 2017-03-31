accessing
encodingNames: aCollectionOrNil
	encodingNames :=
		aCollectionOrNil
			ifNotNil: [aCollectionOrNil asSet]