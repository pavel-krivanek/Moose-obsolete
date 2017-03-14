grammar-classes-method
normalParametersDecls
	^ super normalParametersDecls ==> [ :nodes | 
			| declarationNode |
			((nodes second collect: [ :element | element second ]) asOrderedCollection)
				addFirst: nodes first; yourself]