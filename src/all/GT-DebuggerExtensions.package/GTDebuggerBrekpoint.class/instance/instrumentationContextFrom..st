accessing
instrumentationContextFrom: aContext
	"The action of opening the debugger will be called from the debugging action.
	Hence the top context will not be the one where the metalink was declared,
	but the one were the debugger was opened. To avoid that we give the breakpoint a
	chance to return the correct context that contains the metalink instrumentation."
	
	^ aContext