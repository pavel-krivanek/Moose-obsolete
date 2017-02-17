drawing - helpers
computeSVGPathFor: aShape
	^ aShape athensCanvas createPath: [ :builder |
		aShape curves do: [ :each | 
			builder perform: each first withArguments: each second ]
		]
	