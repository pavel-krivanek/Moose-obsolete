start-phase
computeModules
	"computes the modules present inside a lattice. A module is a bunch of modes that are connected to the rest of the lattice through a unique top and a bottom node. The algo leaves the top node of the lattice. It then takes all nodes and analyzes its descendantes to see if the bunch forms a module.. This method triggers the detection algorithm to start on instanceVariable nodesToConsider. The algorithm is run until all nodes in the lattice are considered."

	[self startAlgo] whileTrue: [self startAlgo].
	^ self moduleNodes