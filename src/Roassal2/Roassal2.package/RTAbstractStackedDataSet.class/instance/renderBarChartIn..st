hooks
renderBarChartIn: aView
	| centralDot elements positiveElements negativeElements |
	centralDot := self centralDot.
	
	elements := histogramBuilder elementsOn: points.
	builder view addAll: elements.
	interaction setUpElements: elements.

	RTMetricNormalizer new
		elements: elements;
		normalizeElementX: [ :element | (elements indexOf: element) + 0.513 ]
			min: 0
			max: builder extent x
			minValue: 1
			maxValue: maxX + 1.

	"We treat the element with a positive value"
	positiveElements := elements select: [ :el | (y rtValue: el model) >= 0 ].
	positiveElements
		ifNotEmpty: [
			RTMetricNormalizer new
				elements: positiveElements;
				normalizeHeight: [ :model | y rtValue: model ]
					min: 0
					max: builder extent y + centralDot position y
					minValue: 0
					maxValue: maxY ].
	RTAlignment new elements:  positiveElements; alignFromBottomUsing: centralDot. 
		
	"We treat the element with a negative value"
	negativeElements := elements copyWithoutAll: positiveElements.
	negativeElements
		ifNotEmpty: [ 
			RTMetricNormalizer new
				elements: negativeElements;
				normalizeHeight: [ :model | y rtValue: model ]
					min: "builder extent y -"  centralDot position y negated 
					max: 0
					minValue: minY
					maxValue: 0.
				RTAlignment new elements:  negativeElements; alignFromBottomUsing: centralDot. ].	"We set the actions, if any"
	elementActions do: [ :act | act rtValue: elements ]