baseline
baselineDynaMoose: spec 
    
	#(
		'Dynamix-Core'
		'Dynamix-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #DynaMoose) ]]
