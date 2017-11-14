baseline
baselineMocketry: spec 
    
	#(
		'Mocketry-Domain'
		'Mocketry-Domain-Tests'
		'Mocketry-Help'
		'Mocketry-Specs'
		'Mocketry-Specs-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]
