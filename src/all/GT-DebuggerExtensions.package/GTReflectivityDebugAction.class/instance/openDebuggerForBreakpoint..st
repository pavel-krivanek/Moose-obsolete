opening
openDebuggerForBreakpoint: aBreakpoint
	"FIX ME: consider moving this method to the actual breakpoint 
	so that actions become more lighweight"
	|ctxt|
	ctxt := thisContext.
	
	UIManager default 
		debugProcess: Processor activeProcess 
		context: (aBreakpoint instrumentationContextFrom: ctxt)
		label: (self debuggerData at: #title)
		usingDebuggerClass: self debuggerClass
		initializedSessionWith: [ :aSession | 
			self updateDebuggingSession: aSession forBreakpoint: aBreakpoint. ]
		initializedDebuggerWith: [ :aDebugger | 
			aDebugger window 
				position: (self debuggerData at: #position);
				extent: (self debuggerData at: #extent) ]