grammar
function
	^ super function ==> [ :node |
		RBMethodNode
			selector: (self
				selector: node first
				count: node second size)
			arguments: node second
			body: ((RBSequenceNode statements: (Array
				with: node fourth))
				addReturn;
				yourself) ]