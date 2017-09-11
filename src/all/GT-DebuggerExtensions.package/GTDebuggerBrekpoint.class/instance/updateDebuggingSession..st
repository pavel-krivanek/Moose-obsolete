actions
updateDebuggingSession: aSession
	"I am a callback that is called before the debugger is opened.
	I can be used to remove the instrumentation from the displayed methods.
	At this point the debugger process is suspended."