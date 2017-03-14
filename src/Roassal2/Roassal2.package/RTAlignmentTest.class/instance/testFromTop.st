tests
testFromTop
	| es |
	es := (RTBox new size: #yourself) elementsOn: (10 to: 100 by: 10).
	align elements: es.
	RTHorizontalLineLayout on: es.
	es second translateBy: 0 @ -50.
	self assert: (es collect: [ :e | e encompassingRectangle top ]) asArray equals: #(0.0 -50.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align topMostElement equals: es second.
	align top.
	self assert: (es collect: [ :e | e encompassingRectangle top ]) asArray equals: #(-50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0).