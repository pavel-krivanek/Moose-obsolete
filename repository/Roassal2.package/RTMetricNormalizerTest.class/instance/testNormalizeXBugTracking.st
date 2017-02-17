test x
testNormalizeXBugTracking

	| es |
	es := RTBox elementsOn: (0.0 to: 1.0 by: 0.005).
	self assert: es size equals: (0.0 to: 1.0 by: 0.005) size.

	RTMetricNormalizer new
		elements: es;
		normalizeElementX: [ :anElement | #yourself rtValue: anElement model ]
			min: 0
			max: 300
			minValue: 0
			maxValue: 1.2.

	RTMetricNormalizer new
		elements: es;
		normalizeY: [ :model | #yourself rtValue: model ]
			min: 0
			max: 300
			minValue: 0
			maxValue: 1.2.
	"
	es collect: #position
	"
	self assert: (es allSatisfy: [ :e | e position x = e position y ]) 