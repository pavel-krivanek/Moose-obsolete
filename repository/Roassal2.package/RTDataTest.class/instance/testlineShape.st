tests
testlineShape

	| ds |
	ds := RTData new.
	self assert: ds lineShape class equals: RTShapeBuilder