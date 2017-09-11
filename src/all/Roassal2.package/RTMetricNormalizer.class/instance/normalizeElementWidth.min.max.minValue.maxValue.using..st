public normalize size
normalizeElementWidth: metricBlock min: min max: max minValue: minValue maxValue: maxValue using: transformation
	"aBlock is evaluated on each node. 
	 Colors is an array of colors used to do the fading"
		
	| values |
	self checkNotEmpty.	
	
	values := (self getElementNormalizedValues: metricBlock 
							min: min max: max 
							minValue: minValue maxValue: maxValue 
							using: transformation).
	elements with: values do: [ :el :v | el trachelShape width: v ] 
