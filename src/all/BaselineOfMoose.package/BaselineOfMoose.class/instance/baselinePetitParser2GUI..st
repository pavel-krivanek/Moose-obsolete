baseline
baselinePetitParser2GUI: spec 
    
	#(
		'PetitParser2-GUI'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser2) ]]
	