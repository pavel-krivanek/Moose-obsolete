baseline
baselineNeoJSON: spec 
    
	#(
		'Neo-JSON-Core'
		'Neo-JSON-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #NeoJSON) ]]
