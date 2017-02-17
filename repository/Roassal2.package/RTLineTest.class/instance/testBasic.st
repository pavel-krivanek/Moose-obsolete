tests
testBasic

	| e1 e2 l edge |
	e1 := RTBox elementOn: 5.
	e2 := RTBox elementOn: 10.

	l := RTLine new.
	l widthElement: [ :anEdge | anEdge from model ].	
	edge := l edgeFrom: e1 to: e2.

	self assert: edge trachelShape width equals: 5