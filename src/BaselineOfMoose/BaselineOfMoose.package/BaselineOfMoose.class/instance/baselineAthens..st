baseline
baselineAthens: spec 
    
		#(
			 'Athens-SVG'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Athens) ]].

