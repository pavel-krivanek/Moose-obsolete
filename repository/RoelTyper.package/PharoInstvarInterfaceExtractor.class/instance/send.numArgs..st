opcodes-control
send: selector numArgs: na
	"selector = #shapeBoundsAt:ifPresent: ifTrue: [self halt]".
	^self nativeSend: selector numArgs: na 