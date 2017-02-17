grammar
condition
	^ super condition ==> [ :node | 
		RBMessageNode 
			receiver: node second
			selector: #ifTrue:ifFalse:
			arguments: (Array 
				with: (RBBlockNode 
					arguments: #()
					body: (RBSequenceNode 
						statements: (Array with: node fourth)))
				with: (RBBlockNode 
					arguments: #()
					body: (RBSequenceNode 
						statements: (Array with: node sixth)))) ]