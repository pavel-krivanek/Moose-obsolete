as yet unclassified
buildPathOn: aCanvas 

	pathCache := WeakArray with: aCanvas surface.
	athensPath := aCanvas createPath: [:builder |
		
		pathData do: [:each |
			builder perform: each first withArguments: each second
			]
	]
