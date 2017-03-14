accessing
allEntityTypes
	^ self collectAsSet: [ :each | each class  ]