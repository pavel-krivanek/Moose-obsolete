hooks
renderDotAndLinesIn: aView

	builder view addAll: elements.
	interaction setUpElements: elements.
	
	RTMetricNormalizer new
		elements: elements;
		normalizeElementX: [ :anElement | x rtValue: anElement ]
			min: 0
			max: builder extent x
			minValue: (xScale rtValue: minX)
			maxValue: (xScale rtValue: maxX)
			using: xScale.
			
	RTMetricNormalizer new
		elements: elements;
		normalizeElementY: [ :anElement | y rtValue: anElement ]
			min: 0
			max: builder extent y negated
			minValue: (yScale rtValue: minY)
			maxValue: (yScale rtValue: maxY)
			using: yScale.
			
	elementActions do: [ :act | act rtValue: elements ].
			
	self renderLinesFor: elements in: aView