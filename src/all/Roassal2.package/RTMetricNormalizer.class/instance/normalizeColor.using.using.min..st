public normalize color
normalizeColor: metricBlock using: colors using: transformation min: min
	"aBlock is evaluated on each node model. 
	 Colors is an array of colors used to do the fading"
	
	| max |
	"We get the min and the max of the metric for all the elements"
	self assert: [ elements notEmpty ] description: 'You need to provide elements using #objects:, #elements:, #fromObjects:, ... '.
	max := transformation rtValue: (metricBlock rtValue: elements anyOne model).
	elements do: [ :el | 
		| t |  
		t := transformation rtValue: (metricBlock rtValue: el model).
		max := max max: t ].

	self normalizeColor: metricBlock using: colors using: transformation min: min max: max
