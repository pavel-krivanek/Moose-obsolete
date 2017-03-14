baseline
baselineMagritte3: spec 
    
	#(
		'Magritte-Model'
		'Magritte-Pharo3-Model'
		'Magritte-Tests-Model'
		'Magritte-Tests-Pharo-Model'
		'Magritte-Morph'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Magritte3) ]]
