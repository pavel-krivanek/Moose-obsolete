public
connectToAll: aBlock
	"Establish some connections"
	"aBlock accepts an object and returns a list of objects"
	"aBlock return an object or a list of objects to highlight"
	
	"
	Here is an example on how to use it, using the Mondrian builder:
	-=-=-=-=-=-=-=-=
	| b |
	b := RTMondrian new.
	b interaction showEdge connectToAll: [ :v | Array with: v + 1 ].
	b nodes: #(1 2 2 3).

	b layout circle initialRadius: 10. 
	b
	-=-=-=-=-=-=-=-=

	Another example:
	-=-=-=-=-=-=-=-=
	| b |
	b := RTMondrian new.
	b interaction showEdge color: Color blue trans; connectToAll: #dependentClasses.
	b shape circle.
	b nodes: Collection withAllSubclasses.
	b edges moveBehind; connectFrom: #superclass.
	b normalizer normalizeSize: #numberOfMethods; normalizeColor: #numberOfMethods.
	b layout cluster. 
	b	
	-=-=-=-=-=-=-=-=
	"
	
	connectToElements := [ :el | 
		| objects |
		objects := aBlock rtValue: el model.
		(objects flatCollect: [ :o | el view elementsFromModel: o ]) copyWithout: nil
		]