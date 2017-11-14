private
computeEdges
	links ifNil: [ ^  self ].
	elements do: [ :e |
		e attributes 
			at: #sourceLinks put: OrderedCollection new;
			at: #targetLinks put: OrderedCollection new ].
	
	edges := links collect: [ :l | | e1 e2 edge|
		e1 := elements elementFromModel: (linkFrom value: l).
		e2 := elements elementFromModel: (linkTo value: l).
		edge := lineShape edgeFrom: e1 to: e2.
		interactionEdge setUpElement: edge.
		edge attributes at: #value put: (linkValue rtValue: l).
		(e1 attributes at: #sourceLinks) add: edge.
		(e2 attributes at: #targetLinks) add: edge.
		view add: edge.
		edge ].
	edges do: #pushBack.
	