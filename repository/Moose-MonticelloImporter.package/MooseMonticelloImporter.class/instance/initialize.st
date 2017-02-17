initialize-release
initialize
	super initialize.
	importingContext := MooseImportingContext new importMaximum; mergeClassAndMetaclass; yourself.