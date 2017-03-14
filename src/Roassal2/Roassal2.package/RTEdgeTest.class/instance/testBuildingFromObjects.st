tests - building
testBuildingFromObjects
	| view objects elements |
	view := RTView new.
	objects := Array with: RTLine with: RTLine superclass.
	elements := (RTBox new size: 20) elementsOn: objects.
	view addAll: elements.
	RTEdgeBuilder new
		view: view;
		objects: objects;
		connectFrom: #yourself to: #superclass.
	self assert: view numberOfElements = 2.
	self assert: view numberOfEdges = 1.
	edge := view edges last.
	self assert: edge from == elements first.
	self assert: edge to == elements second.
	self assert: edge model notNil.
	self assert: edge model equals: elements first model -> elements second model