buidling-models
buildLIB

	| builder |
	
	builder := FMPragmaProcessor new.
	builder queue: (OrderedCollection new
		"add: LIBRoot;"
		add: LIBBook;
		add: LIBLibrary;
		add: LIBPerson;
		yourself).
	builder run.
	^ builder asMetamodel 