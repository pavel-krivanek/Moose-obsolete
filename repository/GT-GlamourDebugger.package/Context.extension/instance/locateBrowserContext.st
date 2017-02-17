*GT-GlamourDebugger
locateBrowserContext

	^ (self findContextSuchThat:  [ :ctx | 
		(ctx receiver class inheritsFrom: GLMPresentation) " and: [ ctx selector = #startOn: ]" ]) 