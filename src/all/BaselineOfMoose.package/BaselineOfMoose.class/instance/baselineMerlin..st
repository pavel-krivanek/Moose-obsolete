baseline
baselineMerlin: spec 
    
	#(
		'Merlin'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Merlin) ]]
