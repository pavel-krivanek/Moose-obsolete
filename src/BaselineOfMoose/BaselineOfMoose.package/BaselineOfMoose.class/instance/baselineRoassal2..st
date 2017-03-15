baseline
baselineRoassal2: spec 
    
		#(
			'Trachel'
			'Roassal2'
			'Roassal2Spec'
			'Roassal2GT'
			'Roassal2-Rules'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Roassal2) ]].
