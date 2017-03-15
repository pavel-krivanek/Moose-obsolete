baseline
baselineGeometry: spec 
    
	#(
		'Geometry'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Geometry) ]]

