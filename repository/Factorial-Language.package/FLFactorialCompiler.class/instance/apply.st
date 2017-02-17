grammar
apply
	^ super apply ==> [ :node |
		RBMessageNode
			receiver: (RBVariableNode named: 'self')
			selector: (self
				selector: node second
				count: node third size) 
			arguments: node third ]