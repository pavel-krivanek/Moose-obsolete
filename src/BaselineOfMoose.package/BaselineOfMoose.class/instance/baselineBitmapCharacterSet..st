baseline
baselineBitmapCharacterSet: spec 
    
	#(
		'Collections-BitmapCharacterSet'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #BitmapCharacterSet) ]]
