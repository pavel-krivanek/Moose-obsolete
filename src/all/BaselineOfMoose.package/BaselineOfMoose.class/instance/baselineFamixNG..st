baseline
baselineFamixNG: spec 
    
	#(
		'Famix-General'
		'Famix-Compatibility'
		'Famix-SmalltalkModel'
		'Famix-JavaMetamodel'
		'Famix-CppMetamodel'
		'Famix-SQLMetamodel'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]
