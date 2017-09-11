actions
updateDebuggingSession: aSession
	super updateDebuggingSession: aSession.
	
	aSession stepOver. "instrumented method -> ensure block calling breakpointReached"
	aSession stepOver. "ReflectiveMethod>>run:with:in:"