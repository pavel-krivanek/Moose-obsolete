baseline
baselineArki: spec 
    
	#(
		'Arki-Reporter-Core'
		'Arki-Reporter-Browser'
		'Arki-Tests-Reporter'
		'OnMoose-Report'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Arki) ]]

