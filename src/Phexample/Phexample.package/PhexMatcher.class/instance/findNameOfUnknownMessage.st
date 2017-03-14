private
findNameOfUnknownMessage
	"	1. walk up the stack until we are outside of this instance.
		2. collect all sent message from bytecode up to program counter.
		3. drop messages until #should and return previous. "
	| frame scanner sent |
	frame := thisContext.
	[	frame := frame sender. 
		frame receiver == self ] whileTrue.
	scanner := InstructionStream on: frame method.
	sent := Stack new.
	scanner scanFor: [ :bytecode | 
		sent push: scanner selectorToSendOrSelf.
		(frame pc - 1) <= scanner pc ].
	[	sent isEmpty ifTrue: [ ^'<unknown>' ].
		sent pop = #should ] whileFalse.
	sent top isSymbol ifFalse: [ ^'<unknown>' ].
	^sent top