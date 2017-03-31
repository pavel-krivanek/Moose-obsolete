baseline
baselineStateSpecs: spec 
    
	#(
		'StateSpecs-Specs'
		'StateSpecs-DSL-ShouldExpressions'
		'StateSpecs-DSL-ClassWords'
		'StateSpecs-Help'
		'StateSpecs-Specs-Tests'
		'StateSpecs-DSL-ShouldExpressions-Tests'
		'StateSpecs-DSL-ClassWords-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #StateSpecs) ]]
