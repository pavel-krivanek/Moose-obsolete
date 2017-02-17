*Famix-C
parentModule: aModule
	^ self privateState 		
		attributeAt: #parentModule
		put: (
			FMMultivalueLink 
				on: self
				update: #functions
				from: self parentModule
				to: aModule
			 )