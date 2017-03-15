baseline
baselineXPath: spec 
    
	#(
		'XPath-Core'
		'XPath-SqueakCommonCompatibility'
		'XPath-Tests'
		'XPath-GTExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XPath) ]]
