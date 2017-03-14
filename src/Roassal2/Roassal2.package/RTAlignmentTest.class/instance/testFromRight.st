tests
testFromRight
	| es |
	es := (RTBox new size: #yourself) elementsOn: (10 to: 100 by: 10).
	align elements: es.
	RTVerticalLineLayout on: es.
	es second translateBy: 150 @ 0.
	self assert: (es collect: [ :e | e encompassingRectangle right ]) asArray equals: #(10.0 170.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0).
	self assert: align rightMostElement equals: es second.
	align right.
	self assert: (es collect: [ :e | e encompassingRectangle right ]) asArray equals: #(170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0)
"	
	RTView new addAll: es; inspect.
	"