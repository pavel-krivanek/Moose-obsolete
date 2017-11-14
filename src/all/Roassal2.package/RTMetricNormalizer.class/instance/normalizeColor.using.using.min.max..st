public normalize color
normalizeColor: metricBlock using: colors using: transformation min: min max: max
	| values normalizer |
	self checkNotEmpty.	
	
	values := (self getNormalizedValues: metricBlock 
							min: 0.0 max: 1.0 
							minValue: min maxValue: max
							using: transformation).
	normalizer := RTMultiLinearColor new colors: colors.
	elements with: values do: [ :el :v | 
		el trachelShape color: (normalizer level: v) ] 
	