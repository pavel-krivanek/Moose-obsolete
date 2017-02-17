tests
testSource

	| v es eb c |
	v := RTView new.
	es := RTBox elementsOn: #(1 2 3). 
	v addAll: es.
	
	eb := RTEdgeBuilder new.
	eb view: v.
	
	c := OrderedCollection new.
	c add: 1 -> 2.
	c add: 3 -> 1.
	eb source: c connectFrom: #key to: #value.
	
	self assert: v numberOfEdges equals: 2