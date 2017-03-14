tests
testVisitArcShape
	| el |
	el := (RTArc new  betaAngle: 0; innerRadius: 30; externalRadius: 30) element.
	visitor visitElement: el.
	self assert: visitor stream contents equals: '
		{type: "arc", id: "0", ir: 30, er: 30, aAngle: 0, bAngle: 0, o: {x: 30, y: 0}, c: {x: 30, y: 0},color: {r:223,g:223,b:223}, matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, '