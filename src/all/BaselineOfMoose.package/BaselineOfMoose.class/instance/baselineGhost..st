baseline
baselineGhost: spec 
    
	#(
		'Ghost-ObjectGhost'
		'Ghost-ClassGhost'
		'Ghost-ObjectMutation'
		'Ghost-ObjectGhost-Tests'
		'Ghost-ClassGhost-Tests'
		'Ghost-ObjectMutation-Tests'
		'Ghost-StateSpecsSupport'
		'Ghost-StateSpecsSupport-Tests'
		'Ghost-GTSupport'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]
