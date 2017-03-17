tests - interaction
testShowEdge
	| elements |
	b interaction showEdge connectTo: [ :v | Array with: v + 1 ].
	b nodes: #(1 2 2 3).

	b layout circle initialRadius: 10. 
	b build.

	self assert: b view numberOfEdges equals: 0.
	
	elements := b view elements.
	elements first announce: TRMouseEnter new.
	self assert: b view numberOfEdges equals: 2.