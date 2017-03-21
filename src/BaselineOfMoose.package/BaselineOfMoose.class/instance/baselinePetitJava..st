baseline
baselinePetitJava: spec
    
	#(
		'PetitJava'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitJava) ]]
