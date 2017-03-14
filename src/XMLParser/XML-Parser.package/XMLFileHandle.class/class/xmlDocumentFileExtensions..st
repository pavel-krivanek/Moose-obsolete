accessing
xmlDocumentFileExtensions: aCollectionOrNil
	XMLDocumentFileExtensions :=
		aCollectionOrNil
			ifNotNil: [aCollectionOrNil asSet]