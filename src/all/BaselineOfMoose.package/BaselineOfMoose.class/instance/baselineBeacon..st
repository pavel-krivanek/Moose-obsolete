baseline
baselineBeacon: spec 
    
	#(
		'Beacon-Core'
		'Beacon-Core-GT'
		'Beacon-Core-Tests'
		'Beacon-File'
		'Beacon-Syslog'
		'Beacon-Zinc'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Beacon) ]]
