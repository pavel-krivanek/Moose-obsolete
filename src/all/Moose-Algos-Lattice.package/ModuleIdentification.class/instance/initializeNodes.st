initialization
initializeNodes

	nodesToConsider := (self lattice nodes ) reject: [:each | each = self lattice top].
	moduleNodes := OrderedCollection new.
	
