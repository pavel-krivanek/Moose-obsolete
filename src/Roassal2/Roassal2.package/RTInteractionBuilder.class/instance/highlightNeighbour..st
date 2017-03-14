public - events-registering
highlightNeighbour: aBlock
	"Highlight the elements for which the model is given by 'aBlock rtValue: element model', where 'element' is the current element
	
	aBlock takes as input an object and return a collection of objects.
	"
	
	"
	Example:
b := RTMondrian new.
b interaction highlightNeighbour: [ :v | Array with: v - 1 with: v with: v + 1 ].
b nodes: (1 to: 11).
b layout grid.
b 
	
	"
	interactions add: [ :element | element @ (RTHighlightable highlight: aBlock) ]