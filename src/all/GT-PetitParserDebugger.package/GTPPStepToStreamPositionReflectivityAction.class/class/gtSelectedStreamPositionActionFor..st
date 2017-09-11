registration
gtSelectedStreamPositionActionFor: aDebugger
	"<gtPPStreamDebuggingAction>
	<gtContextPPStreamDebuggingAction>"
	
	^ (self forDebugger: aDebugger)
		position: aDebugger streamSelectionInterval last;
		label: 'Run to here (fast)'