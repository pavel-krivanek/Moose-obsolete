tests
testExportWithScale

	emptyExporter withScale.
	view canvas camera scale: 2.
	emptyExporter builder: view.
	
	self assert: emptyExporter viewExtent equals: (7 @ 7).
	self assert: emptyExporter viewHalfExtent equals: (3.5 @ 3.5).
	self assert: emptyExporter saveWithScale.
	
	emptyExporter withoutScale.
	self assert: (emptyExporter viewExtent closeTo: (6 @ 6)).
	self assert: (emptyExporter viewHalfExtent closeTo: (3 @ 3)).
	