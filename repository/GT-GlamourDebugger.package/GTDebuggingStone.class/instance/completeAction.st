actions
completeAction

	^ self perform: self actionSelector withEnoughArguments: (Array with: self session context)