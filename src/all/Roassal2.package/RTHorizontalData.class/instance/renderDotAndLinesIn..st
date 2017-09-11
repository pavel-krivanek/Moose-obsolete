rendering
renderDotAndLinesIn: aView
	
	aView addAll: elements.
	interaction setUpElements: elements.
	RTMetricNormalizer new 
		elements: elements;
		normalizeElementY: [ :el | y rtValue: el ]
			min: 0
			max: builder extent y negated
			minValue: (yScale rtValue: minY)
			maxValue: (yScale rtValue: maxY)
			using: yScale.
	RTMetricNormalizer new
		elements: elements;
		normalizeElementX: [ :el | x rtValue: el ]
			min: 0
			max: builder extent x
			minValue: (xScale rtValue: minX)
			maxValue: (xScale rtValue: maxX)
			using: yScale.
	self renderLinesFor: elements in: aView.
	self executeUserDeclaredActions.