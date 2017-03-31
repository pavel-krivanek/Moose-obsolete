*Moose-Algos-GraphObjectTraverser
deepGraph: aBlock
	| traverser |
	traverser := MalCustomObjectTraverser with: aBlock.
	traverser traverse: self.
	^ traverser graph