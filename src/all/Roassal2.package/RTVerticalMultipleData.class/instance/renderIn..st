rendering
renderIn: aView

	"We need to do the layout here"

	| centralDot |
	centralDot := self centralDot.
	
	"We compute the height"
	RTMetricNormalizer new
		elements: elements;
		normalizeElementHeight: [ :anElement | y rtValue: anElement ]
			min: 0
			max: builder extent y + centralDot position y
			minValue: 0
			maxValue: maxY.

	"We stack the elements"
	groupedElements do: [ :groupOfEl | RTVerticalLineLayout new gapSize: 0; on: groupOfEl ].
	RTAlignment new elements: groupedElements; fixedElement: centralDot; bottom.

	"We horizontally position the elements"
	RTMetricNormalizer new
		elements: groupedElements;
		normalizeElementX: [ :aGroupOfElement | x rtValue: aGroupOfElement first ]
			min: 0
			max: builder extent x
			minValue: minX
			maxValue: maxX + 1.
	"We have 'maxX + 1' because we do not want the last bar on the extremity of the X-Axis"

	elementActions do: [ :act | act rtValue: (groupedElements collect: #first) ]