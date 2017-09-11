accessing
instrumentationContextFrom: aContext

	^ aContext  "--(GTReflectivityDebugAction)>>openDebuggerForBreakpoint:" 
		sender   "--(GTReflectivityDebugAction)>>breakpointReachedFrom:"
		sender   "--(GTDebuggerBrekpoint)>>breakpointReached"
		sender   "instrumented method -> ensure block calling breakpointReached"
		sender   "Context>>#resume:through:"
		sender   "Context>>ensure:"
		sender   "instrumented method -> before exiting"