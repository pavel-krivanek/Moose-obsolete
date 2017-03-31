baseline
baselineDeepTraverser: spec 
    
	#(
		 'DeepTraverser'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #DeepTraverser) ]]
