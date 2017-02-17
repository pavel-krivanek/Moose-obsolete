public normalize color
normalizeColor: metricBlock using: colors using: transformation min: min max: max
	| values normalizer |
	self checkNotEmpty.	
	
	values := (self getNormalizedValues: metricBlock 
							min: 0.0 max: 1.0 
							minValue: min maxValue: max
							using: transformation).
	normalizer := RTMultiLinearColor new colors: colors.
"	elements do: [ :el |  
		el trachelShape color: (normalizer level: (((transformation rtValue: (metricBlock rtValue: el model)) - min) / max)) ]
"
	elements with: values do: [ :el :v | 
		el trachelShape color: (normalizer level: v) ] 
	