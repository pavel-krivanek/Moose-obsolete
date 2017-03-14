baseline
baselineOrderPreservingDictionary: spec 
    
	#(
		'Collections-OrderPreservingDictionary'
		'Collections-OrderPreservingDictionary-GTExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #OrderPreservingDictionary) ]]
