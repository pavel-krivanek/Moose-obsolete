helpers-primitives
executeWith: receiver andArguments: argArray method: compiledMethod
	"Execute compiledMethod against the receiver and the arguments in argArray"
	"Please do not use this method. It is just there to make sure that we can invoke this primitive with right order of arguments"

	<primitive: 188>
	^self primitiveFailed