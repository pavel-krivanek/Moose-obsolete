tests
testDebugger

	self 
		assertDebuggerInitializationForContext: [PPArithmeticParser new parse: '1+1'] asContext 
		andStepBlock: self stepToParseOnContext.

 	self assertDebuggerClosing.