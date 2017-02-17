actions
stepToDebuggingStoneFrom: aContext

	"Make sure the execution advances, and does not check the same context."
	self session stepInto: aContext.

	self session 
		stepUntil: self debuggingStonePredicate
		from: self interruptedContext.
		
	^ self session isActive 
		ifTrue: [ 
			GTGlamourDebuggingStone 
				"Here interruptedContext is the same as the suspended context of the process."
				forPragma: (self interruptedContext method pragmaAt: self class debuggingStonePragma) 
				forSession: self session  ]
		ifFalse: [ nil ]