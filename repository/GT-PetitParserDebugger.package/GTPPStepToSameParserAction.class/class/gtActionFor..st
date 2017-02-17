registration
gtActionFor: aDebugger
"	<gtPPDebuggingAction>
	<gtContextPPDebuggingAction>
	"
	^ (self forDebugger: aDebugger)
		parser: aDebugger currentContext receiver