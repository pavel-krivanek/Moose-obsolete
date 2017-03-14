middle-phase
allAncestors: aNode

	"computes all the anscentors of a node in the lattice"
	
	^ self lattice nodes 
		select: [:each | each descendants includes: aNode].