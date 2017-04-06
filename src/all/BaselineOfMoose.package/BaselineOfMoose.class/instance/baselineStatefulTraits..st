baseline
baselineStatefulTraits: spec 
    
	#(
		'StatefulTraits'
		'StatefulTraits-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]
