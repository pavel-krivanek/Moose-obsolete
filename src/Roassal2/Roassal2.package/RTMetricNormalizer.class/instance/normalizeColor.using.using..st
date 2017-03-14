public normalize color
normalizeColor: metricBlock using: colors using: transformation
	"aBlock is evaluated on each node model. 
	 Colors is an array of colors used to do the fading"
	
	| min max |
	"We get the min and the max of the metric for all the elements"
	self assert: [ elements notEmpty ] description: 'You need to provide elements using #objects:, #elements:, #fromObjects:, ... '.
	min := transformation rtValue: (metricBlock rtValue: elements anyOne model).
	max := min.
	elements do: [ :el | 
		| t |  
		t := transformation rtValue: (metricBlock rtValue: el model).
		min := min min: t.
		max := max max: t ].
	max = 0 ifTrue: [ ^ self ].
	
	self normalizeColor: metricBlock using: colors using: transformation min: min max: max
"	normalizer := RTMultiLinearColor new colors: colors.
	elements do: [ :el |  
		el trachelShape color: (normalizer level: (((transformation rtValue: (metricBlock rtValue: el model)) - min) / max)) ]"