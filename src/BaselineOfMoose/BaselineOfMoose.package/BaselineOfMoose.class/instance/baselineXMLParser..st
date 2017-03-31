baseline
baselineXMLParser: spec 
    
	#(
		'XML-Parser'
		'XML-Tests-Parser'
		'XML-Parser-GTExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLParser) ]]
