baseline
baselineRoelTyper: spec 
    
	spec package: 'RoelTyper'.
	#(
		 'RoelTyper'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #RoelTyper) ]]
