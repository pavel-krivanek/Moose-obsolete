instruction decoding
send: selector super: supered numArgs: numberArguments
	"Send Message With Selector, selector, bytecode. The argument, 
	supered, indicates whether the receiver of the message is specified with 
	'super' in the source method. The arguments of the message are found in 
	the top numArguments locations on the stack and the receiver just 
	below them."

	^supered
		ifTrue:
			[self
				sendSuper: selector
				numArgs: numberArguments]
		ifFalse:
			[self
				send: selector
				numArgs: numberArguments]