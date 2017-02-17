tests
testVisitPolygonShape
	| shape |
	shape := RTPolygon new 
		vertices: (Array with: 0@0 with: 1@0 with: 1@1); elementOn: 'foo'.
	visitor visitElement: shape.
	self assert: visitor stream contents equals: '
		{type: "polygon", id: "0", o: {x: 0, y: 0}, c: {x: 1, y: 1}, p: "0,0 1,0 1,1 ",color: {r:223,g:223,b:223}, matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, '