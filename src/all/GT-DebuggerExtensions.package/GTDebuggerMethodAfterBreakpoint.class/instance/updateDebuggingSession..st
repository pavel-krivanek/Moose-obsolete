actions
updateDebuggingSession: aSession
	super updateDebuggingSession: aSession.
	
	"aSession stepInto."
	
	"aSession updateContextTo: aSession interruptedContext sender"