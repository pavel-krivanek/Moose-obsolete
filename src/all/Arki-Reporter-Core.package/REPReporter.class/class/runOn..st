instance creation
runOn: spec
	^ self new 
		spec: spec;
		run;
		yourself