baseline
baselineMetanool: spec 
    
	#(
		'Metanool-Core'
		'Metanool-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Metanool) ]]
	