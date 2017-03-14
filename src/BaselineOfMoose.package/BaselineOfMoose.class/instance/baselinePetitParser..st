baseline
baselinePetitParser: spec 
    
	#(
		'PetitTests'
		'PetitAnalyzer'
		'PetitCSV'
		'PetitGui'
		'PetitIndent'
		'PetitIslands'
		'PetitJson'
		'PetitMSE'
		'PetitManifestMf'
		'PetitRegex'
		'PetitSmalltalk'
		'PetitXml'
		'PetitXPath'
		'PetitYAML'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser) ]]
