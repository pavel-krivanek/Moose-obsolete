grammar
binary
	^ super binary ==> [ :node | 
		RBMessageNode
			receiver: node second
			selector: node third asSymbol
			arguments: (Array with: node fourth) ]