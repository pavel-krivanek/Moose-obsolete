example
sampleBlock
	"should extend Dictionary to make a switch control structure"
	
	^ [ :method ||numArgs|
			numArgs := method numArgs.
			(numArgs = 0)  ifTrue: [ #unary ]
								ifFalse: [
									(numArgs = 1) ifTrue: [ #binary ]
													 ifFalse: [ #keywords ]
												]]