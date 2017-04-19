accessing
currentScope: aScope
	scopes size > 0
		ifTrue: [
			scopes
				at: scopes size
				put: aScope]
		ifFalse: [scopes addLast: aScope]