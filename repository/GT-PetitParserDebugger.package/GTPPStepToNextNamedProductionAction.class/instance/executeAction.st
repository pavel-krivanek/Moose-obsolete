actions
executeAction
	
	self session 
		stepOverInitialInstructionForContext: self startContext;
		stepToNextProduction: self production fromContext: self startContext