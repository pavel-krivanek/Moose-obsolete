tests
testDefaultWithNoLabel

	| v el |
	v := RTView new.
	el := (RTBox new size: 30) element.
	v add: el.
	
	el @ RTLabeled.
	self assert: v numberOfElements = 1.
	
	"No label since there is no object behind the el"
	self assert: v canvas numberOfShapes = 1.
	