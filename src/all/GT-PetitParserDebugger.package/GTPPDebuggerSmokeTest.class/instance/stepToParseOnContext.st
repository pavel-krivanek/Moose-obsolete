utils
stepToParseOnContext
	"Step through the execution until the process reaches a context 
	that can be handles using the PetitParser debugger"
	
	^ [ :aProcess |
	aProcess 
		step;
		step;
		completeStep: aProcess suspendedContext;
		completeStep: aProcess suspendedContext;
		completeStep: aProcess suspendedContext;
		completeStep: aProcess suspendedContext;
		step;
		step;
		step; "send the message 'parse:' "
		completeStep: aProcess suspendedContext;
		completeStep: aProcess suspendedContext;
		completeStep: aProcess suspendedContext;
		step. "send the message parseOn: "
		aProcess stepToSendOrReturn ]