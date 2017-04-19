tests
testDefault

	| v el |
	v := RTView new.
	el := (RTBox new size: 30) elementOn: 'hello world'.
	v add: el.
	
	el @ RTLabeled.
	self assert: v numberOfElements = 1.
	self assert: v canvas numberOfShapes = 2.
	
	self assert: v canvas shapes first class == TRLabelShape.
	self assert: v canvas shapes first position x = 0.
	self assert: v canvas shapes first position y < 10