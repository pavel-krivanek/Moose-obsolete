initialization
initialize
	moosemodel1 := (self readMSEString: self modelVersion1) name: #'Simple model 1'.
	moosemodel2 := (self readMSEString: self modelVersion2) name: #'Simple model 2'.
	moosemodel3 := (self readMSEString: self modelVersion3) name: #'Simple model 3'.
	moosemodel4 := (self readMSEString: self modelVersion4) name: #'Simple model 4'.
	moosemodel5 := (self readMSEString: self modelVersion5) name: #'Simple model 5'.
	history := HismoModelHistory new.
	history addLastVersionForMooseModel: moosemodel1.
	history addLastVersionForMooseModel: moosemodel2.
	history addLastVersionForMooseModel: moosemodel3.
	history addLastVersionForMooseModel: moosemodel4.
	history addLastVersionForMooseModel: moosemodel5.
	history name: #'Sample history'