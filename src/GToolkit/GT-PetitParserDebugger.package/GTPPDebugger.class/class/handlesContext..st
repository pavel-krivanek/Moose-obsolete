testing
handlesContext: aContext

	^ (aContext findContextSuchThat:  [ :ctx | 
				ctx isPPParseRootMethodContext ]) notNil 