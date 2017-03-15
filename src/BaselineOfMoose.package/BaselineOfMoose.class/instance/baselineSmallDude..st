baseline
baselineSmallDude: spec 
    
		#(
			 'SmallDude-Utils'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #SmallDude) ]].
	