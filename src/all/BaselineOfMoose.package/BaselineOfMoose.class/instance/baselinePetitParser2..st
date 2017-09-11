baseline
baselinePetitParser2: spec 
    
	#(
		'PetitParser2'
		'PetitParser2-Tests'
		'PetitParser2-Tutorial'
		'PetitParser2-Validation'
		'PetitParser2-Validation-Tests'
		'PetitParser2-Benchmarks'
		'PetitParser2-Smalltalk'
		'PetitParser2-Smalltalk-Tests'
		'PetitParser2-Html'
		'PetitParser2-Html-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser2) ]]
