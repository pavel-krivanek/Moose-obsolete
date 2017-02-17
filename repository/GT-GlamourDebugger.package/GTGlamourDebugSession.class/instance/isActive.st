testing
isActive

	^ rootBrowserContext  
		ifNil: [ false ] 
		ifNotNil: [ 
			rootBrowserContext isDead not and: [
				
				rootBrowserContext ~= self process suspendedContext or: [rootBrowserContext willReturn not ]
				
				 ]  ]