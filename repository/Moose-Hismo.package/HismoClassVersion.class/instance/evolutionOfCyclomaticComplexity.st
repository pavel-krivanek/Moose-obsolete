properties
evolutionOfCyclomaticComplexity
	<MSEProperty: #evolutionOfCyclomaticComplexity type: #Number>
	<MSEComment:  'Version evolution of number of cyclomatic complexity'>
	
	"Check: CyclomaticComplexity is not applied to classes, just to methods"	
	
	^self evolutionOfPropertyNamed: #evolutionOfCyclomaticComplexity