*Famix-C
parentModule: aModule
	^ self privateState 		
		attributeAt: #parentModule
		put: (FMMultivalueLink 
				on: self
				update: #globalVariables
				from: self parentModule
				to: aModule)