tests
testBasic

	emptyExporter builder: view.
	self assert: emptyExporter builder equals: view.
	"5 @ 5 is a delta we add to make sure we have no pb when exporting
	plus the delta from TRCanvas>>encompassingRectangle"
	self assert: emptyExporter viewExtent equals: (6 @ 6).
	self assert: emptyExporter viewHalfExtent equals: (3 @ 3).