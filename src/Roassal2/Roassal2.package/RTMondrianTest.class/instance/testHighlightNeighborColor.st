tests - interaction
testHighlightNeighborColor

	| elements |
	b interaction highlightNeighbors: [ :v | Array with: v + 1 ] color: Color red.
	b nodes: #(1 2 2).
	b build.
	elements := b view elements.
	
	"All nodes have default color"
	self assert: (elements allSatisfy: [ :e | e trachelShape color = b computeColorForNode ]).
	
	elements first announce: TRMouseEnter.
	
	self assert: (elements first trachelShape color = b computeColorForNode ).
	self assert: (elements second trachelShape color = Color red ).
	self assert: (elements third trachelShape color = Color red ).