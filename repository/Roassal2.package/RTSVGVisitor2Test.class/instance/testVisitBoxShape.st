tests
testVisitBoxShape
	| box |
	box := RTBox new size: 1/2; elementOn: 'foo'.
	visitor visitElement: box.
	self assert: visitor stream contents equals: '
		{type: "box", id: "0", w: 0.5, h: 0.5, color: {r:223,g:223,b:223}, matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, '