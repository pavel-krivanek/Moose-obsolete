tests
testAddingInGrapher

	| g elements |
	g := RTGrapher new.
	g add: d.
	
	elements := d elements.
	self assert: elements size equals: 8.
	
	self assert: d selectElementsForAddingBarTitle size equals: d numberOfPoints.
	self assert: d selectElementsForAddingBarTitle size equals: 3.

	self assert: d selectElementsForAddingBarTitle first equals: d elements second.
	self assert: d selectElementsForAddingBarTitle second equals: d elements fifth.
	self assert: d selectElementsForAddingBarTitle third equals: d elements eighth.
	
	g build.
	
	"Make sure that all the elements created by the data are in the view"
	self assert: (g view elements includesAllOf: d elements)