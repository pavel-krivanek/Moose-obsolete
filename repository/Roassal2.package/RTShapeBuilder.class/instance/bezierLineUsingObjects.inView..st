shape - edges
bezierLineUsingObjects: someObjects inView: view
	"some Objects are objects represented in a view"
	| elements |
	elements := view elementsFromModels: someObjects.
	self shape: (RTBezierLine new controllingElements: elements)
	
 