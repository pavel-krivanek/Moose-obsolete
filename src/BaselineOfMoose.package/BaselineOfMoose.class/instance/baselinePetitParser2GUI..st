baseline
baselinePetitParser2GUI: spec 
    
	#(
		'PetitParser2-GUI'
		'PetitParser2-GUI-Tests'
		'PetitParser2-Benchmarks-GUI'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser2) ]]
	