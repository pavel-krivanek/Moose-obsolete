tests
testAddMatrix
	| el |
	el := RTBox new element.
	el translateTo: 0 @ 0.5.
	visitor addMatrix: el trachelShape matrix.
	self assert: visitor stream contents equals: 'matrix:{shx: 0,shy: 0,sx: 1,sy: 1,x: 0,y: 0.5}}, '