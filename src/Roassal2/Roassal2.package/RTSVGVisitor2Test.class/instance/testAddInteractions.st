tests
testAddInteractions
	| element |
	element := RTBox new borderColor: Color black; elementOn: 1.
	element @ RTDraggable.
	visitor addInteractions: element.
	self assert: visitor stream contents equals: 'ints: [RTDraggable], '