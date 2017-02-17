public normalize line width
normalizeLineWidth: metricBlock min: min max: max minValue: minValue maxValue: maxValue using: transformation
	| values block |
	self checkNotEmpty.
	
	values := (self getNormalizedForLineWidthValues: metricBlock 
							min: min 
							max: max 
							minValue: minValue 
							maxValue: maxValue 
							using: transformation).
	"Very ugly hack"
	block := [ :modelOfTheEdge | modelOfTheEdge ].
	self edges with: values do: [ :edge :aValue | 
		edge model: aValue asFloat.
		edge shape width: block.
		] 
	
	