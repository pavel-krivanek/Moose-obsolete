baseline
baselinePhexample: spec 
    
	spec package: 'Phexample'.
	#(
		 'Phexample'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Phexample) ]]
