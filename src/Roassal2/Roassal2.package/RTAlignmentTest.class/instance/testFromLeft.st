tests
testFromLeft
	| es |
	es := (RTBox new size: #yourself) elementsOn: (10 to: 100 by: 10).
	align elements: es.
	RTVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	self assert: (es collect: [ :e | e encompassingRectangle left ]) asArray equals: #(0.0 -150.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align leftMostElement equals: es second.
	align left.
	self assert: (es collect: [ :e | e encompassingRectangle left ]) asArray equals: #(-150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0)
"	
	RTView new addAll: es; inspect.
	"