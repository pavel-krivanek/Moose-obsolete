tests
testVisitSVGPath
	| shape |
	shape := RTSVGPath new path:'M 100 100 L 300 100 L 200 300 z'; element.
	
	visitor visitElement: shape.
	self assert: visitor stream contents equals: '
		{type: "path", id: "0", d:"M 100 100 L 300 100 L 200 300 z", o: {x: 100, y: 100}, c: {x: 300, y: 300},bordercolor: {r: 0, g: 0, b:0}, sw: 1,color: {r:0,g:0,b:0,a:0}, matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0}}, '