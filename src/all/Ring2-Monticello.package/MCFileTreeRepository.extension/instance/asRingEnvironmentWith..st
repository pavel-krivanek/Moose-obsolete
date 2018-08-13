*Ring2-Monticello
asRingEnvironmentWith: packageNames

	| anRGEnvironment |
	anRGEnvironment := RGEnvironment new.
	anRGEnvironment announcer suspendAllWhile: [ 
		(packageNames) do: [ :pn | 
			| snap defs package version |
			package := anRGEnvironment ensurePackageNamed: pn asSymbol.
			version := self loadVersionFromFileNamed: pn, '.package'.
			snap := version snapshot.

			defs := snap definitions.
			defs do: [ :each |			
				each ensureRingDefinitionIn: anRGEnvironment package: package ]
			displayingProgress: 'snap'.] 
		 displayingProgress: 'version'.
		].		
			
	anRGEnvironment clean.
	anRGEnvironment behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].			
	^ anRGEnvironment 