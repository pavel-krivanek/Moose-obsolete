public normalize size
normalizeElementWidth: metricBlock min: min max: max using: transformation
	"aBlock is evaluated on each node. 
	 Colors is an array of colors used to do the fading"
	
	| minValue maxValue |
	
	self checkNotEmpty.

	"We get the min and the max of the metric for all the elements"
	minValue := transformation rtValue: (metricBlock rtValue: elements anyOne).
	maxValue := minValue.
	elements do: [ :el | 
		| t |  
		t := transformation rtValue: (metricBlock rtValue: el).
		minValue := minValue min: t.
		maxValue := maxValue max: t ].
	
	
	self normalizeElementWidth: metricBlock min: min max: max minValue: minValue maxValue: maxValue using: transformation.
	