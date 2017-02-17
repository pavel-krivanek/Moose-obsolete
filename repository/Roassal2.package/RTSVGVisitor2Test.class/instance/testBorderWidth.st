tests
testBorderWidth
	| el |
	el := RTBox new borderColor: Color black; element.
	visitor addBorderWidth: el trachelShape.
	self assert: visitor stream contents equals: 'sw: 1,'.