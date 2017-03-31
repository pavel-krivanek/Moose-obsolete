tests
testVisitEllipseShape
	| ellipse |
	ellipse := RTEllipse new size: 1/2; elementOn: 'foo'.
	visitor visitElement: ellipse.
	self assert: visitor stream contents equals:'
		{type: "ellipse", id: "0", rx: 0.25, ry: 0.25,color: {r:223,g:223,b:223}, matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, '