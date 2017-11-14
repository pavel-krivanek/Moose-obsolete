baseline
baselineOrderPreservingDictionary: spec 
    
	#(
		'Collections-OrderPreservingDictionary'
		'Collections-OrderPreservingDictionary-GTExtensions'
		'Collections-Tests-OrderPreservingDictionary'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #OrderPreservingDictionary) ]]
