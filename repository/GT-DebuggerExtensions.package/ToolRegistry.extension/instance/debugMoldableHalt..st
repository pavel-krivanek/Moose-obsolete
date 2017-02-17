*GT-DebuggerExtensions
debugMoldableHalt: anException
	^Processor activeProcess
		debugMoldableHalt: anException signalerContext sender "TODO: calling 'sender' might not be the best indea "
		title: anException description