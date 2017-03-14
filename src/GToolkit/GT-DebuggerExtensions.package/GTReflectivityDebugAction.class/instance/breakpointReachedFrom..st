callbacks
breakpointReachedFrom: aBreakpoint

	breakpoints do: #uninstall.

	UIManager default 
		debugProcess: Processor activeProcess 
		context: (aBreakpoint instrumentationContextFrom: thisContext)
		label: (self debuggerData at: #title)
		fullView: true 
		notification: nil 
		usingDebugger: GTPPDebugger
		initializedWith: [ :aDebugger | 
			"aBreakpoint updateDebuggingSession: aDebugger session."
			aDebugger window 
				position: (self debuggerData at: #position);
				extent: (self debuggerData at: #extent) ]