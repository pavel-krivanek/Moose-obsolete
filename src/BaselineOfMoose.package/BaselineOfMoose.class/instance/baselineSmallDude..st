baseline
baselineSmallDude: spec 
    
	#(
		'SmallDude-Core'
		'SmallDude-Moose'
		'SmallDude-Species'
		'SmallDude-Tests-Core'
		'SmallDude-Tests-Text'
		'SmallDude-Text'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #SmallDude) ]]
