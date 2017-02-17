accessing
status
	^ [ self computeStatus ] on: Error do: [:error | 
		REPConcernErrorStatus new concern: self; errorInstance: error ]