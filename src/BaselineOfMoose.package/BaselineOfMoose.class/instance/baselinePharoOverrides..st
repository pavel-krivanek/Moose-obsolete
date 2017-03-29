baseline
baselinePharoOverrides: spec 
    
	#(	
		'GT-Debugger'
		'GT-EventRecorder'
		'GT-InspectorExtensions-Core'
		'GT-Inspector'
		'GT-Playground'
		'GT-Spotter'
		'GT-SpotterExtensions-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].

	#(	
		'Glamour-Core'
		'Glamour-FastTable'
		'Glamour-Morphic-Brick'
		'Glamour-Morphic-Pager'
		'Glamour-Morphic-Renderer'
		'Glamour-Morphic-Widgets'
		'Glamour-Morphic-Theme'
		'Glamour-Presentations'
		'Glamour-Tests-Morphic'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

	#(	
		'Moose-Algos-Graph'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]].
			