tests
testContainsShapeInstanceOf

	| shape |
	shape := RTCompositeShape new.
	shape allOfSameSizeWithPadding.
	shape add: (RTBox new color: Color white; borderWidth: 2; borderColor: Color black).
	shape add: (RTEditableLabel new height: 30).
	self assert: (shape containsShapeInstanceOf: RTLabel).
	self assert: (shape containsShapeInstanceOf: RTEditableLabel).	
	self assert: (shape containsShapeInstanceOf: RTBox).