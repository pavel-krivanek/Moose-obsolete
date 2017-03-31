baseline
baselineCollectionExtensions: spec 
    
	#(
		'CollectionExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #CollectionExtensions) ]]
