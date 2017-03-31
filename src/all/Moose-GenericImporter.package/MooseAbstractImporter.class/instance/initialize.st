initialize-release
initialize
	super initialize.
	targetModel := MooseModel new.
	importingContext := self defaultImportingContext