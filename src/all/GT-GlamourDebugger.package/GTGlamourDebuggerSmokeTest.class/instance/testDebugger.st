tests
testDebugger

	self 
		assertDebuggerInitializationForContext: [GLMBasicExamples open] asContext 
		andStepBlock: self stepToStartOnContext.

 	self assertDebuggerClosing.