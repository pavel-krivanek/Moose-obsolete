baseline
baselineGrease: spec 
    
	#(
		'Grease-Core'
		'Grease-Pharo30-Core' 
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Grease) ]]
	