baseline
baselineBeacon: spec 
    
	#(
		'Beacon-Core'
		'Beacon-Core-GT'
		'Beacon-Core-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Beacon) ]]
