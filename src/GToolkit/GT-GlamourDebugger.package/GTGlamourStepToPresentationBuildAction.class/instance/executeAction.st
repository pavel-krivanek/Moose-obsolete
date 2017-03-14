actions
executeAction
	| presentationCreation presentationCode |
	presentationCreation := self presentationCreationPredicate.
	presentationCode := self presentationCodePredicate.

	self session stepUntil: presentationCreation from: self currentContext.
	self session stepUntil: presentationCode from: self interruptedContext.
	self session isActive ifTrue: [ 
		self session stepInto ]
		
	