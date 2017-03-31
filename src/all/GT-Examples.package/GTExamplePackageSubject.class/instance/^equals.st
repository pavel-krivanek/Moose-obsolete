testing
= anExampleSubject
	^ self class = anExampleSubject class
		and: [ self thePackageName = anExampleSubject thePackageName ]