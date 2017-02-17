as yet unclassified
renderIn: aView
	| edges |
	elements := self shape elementsOn: nodes.
	self interaction setUpElements: elements.
	aView addAll: elements.
	edges := RTEdgeBuilder new
		view: aView;
		elements: elements;
		objects: links;
		connectFrom: linkFrom to: linkTo.
	edges doWithIndex: [:e :i| 
		e attributes at: #value put: (linkValue rtValue: (links at:i) ) ].
	
	self computeElements: edges.