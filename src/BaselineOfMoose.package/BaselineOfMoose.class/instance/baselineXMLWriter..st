baseline
baselineXMLWriter: spec 
    
	#(
		'XML-Writer-Core'
		'XML-Writer-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLWriter) ]]
