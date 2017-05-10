view
testTrachelShape

	| e |
	e := RTBox element.
	self assert: e trachelShape ~~ e.
	self assert: e trachelShape class equals: TRBoxShape.
	
	self assert: e trachelShape trachelShape equals: e trachelShape.
	self assert: e trachelShape trachelShape trachelShape equals: e trachelShape.