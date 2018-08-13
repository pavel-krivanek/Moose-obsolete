tests
testImplicitEnvironment
	
	RGLayout allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self checkImplicitSingleClassEnvironmentOf: layout parent. ].	

