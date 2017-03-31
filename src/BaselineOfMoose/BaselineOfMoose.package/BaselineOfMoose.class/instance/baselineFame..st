baseline
baselineFame: spec 
    
	#(
		'Fame-Core'
		'Fame-Util'
		'Fame-ImportExport'
		'Fame-SmalltalkBinding'
		'Fame-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]
