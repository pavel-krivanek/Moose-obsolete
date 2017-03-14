baseline
baselineZeroConf: spec 
    
	#(
		 'ZeroConf'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #ZeroConf) ]]
