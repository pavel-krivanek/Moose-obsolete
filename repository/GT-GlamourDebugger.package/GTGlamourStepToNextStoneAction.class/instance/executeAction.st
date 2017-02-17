actions
executeAction
	| debugingStone |
	
	"The first time start searching for a debuging stone from the context selected by the user."
	debugingStone := self stepToDebuggingStoneFrom: self currentContext.

	[ debugingStone notNil ]
		whileTrue: [ 
			(debugingStone reachedTarget and: [ 
				debugingStone isActive and: [ 
					debugingStone completeAction ] ]) 
						"After the first time use the interruptedContext (start the search from where it was left of).
						Here the interruptedContext it is the same as the suspended context of the process."
						ifFalse: [ debugingStone := self stepToDebuggingStoneFrom: self interruptedContext ]
						"If a debuging stone reached its destination stop the search."
						ifTrue: [ ^ self ] ]
	