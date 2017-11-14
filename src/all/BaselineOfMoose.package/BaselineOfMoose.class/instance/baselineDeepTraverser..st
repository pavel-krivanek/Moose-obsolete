baseline
baselineDeepTraverser: spec 
    
	#(
		 'DeepTraverser'
		 'DeepTraverser-Examples'
		 'DeepTraverser-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #DeepTraverser) ]]
