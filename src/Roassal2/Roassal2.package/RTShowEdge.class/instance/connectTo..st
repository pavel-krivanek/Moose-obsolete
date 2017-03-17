public
connectTo: aBlock
	"Establish some connections"
	"aBlock accepts an object and returns a list of objects"
	"aBlock return an object or a list of objects to highlight"
	
	"
	Here is an example on how to use it, using the Mondrian builder:
	| b |
	b := RTMondrian new.
	b interaction showEdge connectTo: [ :v | Array with: v + 1 ].
	b nodes: #(1 2 2 3).

	b layout circle initialRadius: 10. 
	b
	"
	
	connectToElements := [ :el | 
		| objects |
		objects := aBlock rtValue: el model.
		(objects flatCollect: [ :o | el view elementsFromModel: o ]) copyWithout: nil
		]