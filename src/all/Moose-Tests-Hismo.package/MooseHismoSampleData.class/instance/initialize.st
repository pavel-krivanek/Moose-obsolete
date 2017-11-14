initialization
initialize
	super initialize.
	history := HismoModelHistory new.
	history addLastVersionForMooseModel: moosemodel1.
	history addLastVersionForMooseModel: moosemodel2.
	history addLastVersionForMooseModel: moosemodel3.
	history addLastVersionForMooseModel: moosemodel4.
	history addLastVersionForMooseModel: moosemodel5.
	history name: #'Sample history'