rendering
renderBarChartIn: aView
	| centralDot positiveElements negativeElements |
	centralDot := self centralDot.
	elements := barBuilder elementsOn: self points.
	aView addAll: elements.
	interaction setUpElements: elements.
	RTMetricNormalizer new 
		elements: elements;
		normalizeElementY: [ :anElement | y rtValue: anElement ]
			min: 0
			max: builder extent y negated 
			minValue: (yScale rtValue: minY)
			maxValue: (yScale rtValue: maxY)
			using: xScale.
	positiveElements := OrderedCollection new.
	negativeElements := OrderedCollection new.
	elements do: [ :el | 
		((x rtValue: el) >= 0 
			ifTrue: [ positiveElements ]
			ifFalse: [ negativeElements ]) add: el ].
	"positive elements"
	positiveElements ifNotEmpty: [ 
		RTMetricNormalizer new
			elements: positiveElements; 
			normalizeElementWidth: [ :el | x rtValue: el ]
				min: 0
				max: builder extent x - centralDot position x
				minValue: 0
				maxValue: (xScale rtValue: maxX)
				using: xScale.
		RTAlignment new elements: positiveElements; fixedElement: centralDot; left].
	
	"negative elements"
	negativeElements ifNotEmpty: [ 
		RTMetricNormalizer new
			elements: negativeElements;
			normalizeElementWidth: [ :el | x rtValue: el ]
				min: centralDot position x
				max: 0
				minValue: (xScale rtValue: minX)
				maxValue: 0
				using: xScale.
		RTAlignment new elements: negativeElements; fixedElement: centralDot; right ].
	
	self executeUserDeclaredActions.
	