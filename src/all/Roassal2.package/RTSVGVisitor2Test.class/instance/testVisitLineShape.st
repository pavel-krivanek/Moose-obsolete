tests
testVisitLineShape
	| shape box e1 e2 |
	box := RTBox new.
	e1 := box element.
	e2 := box element.
	shape := RTLine edgeFrom: e1 to: e2.
	visitor visitEdge: shape.
	self assert: visitor stream contents equals: '
		{type: "line", id: "0", fromid: {x:0,y:0},toid:{x:0,y:0},color: {r:223,g:223,b:223},  width: 1,ap:RTCenteredAttachPoint},'