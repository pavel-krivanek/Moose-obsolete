building presentations
methodCodeIn: aComposite forContext: aContext

	super methodCodeIn: aComposite forContext: aContext.
	aContext ifNotNil: [ 
		self workspaceIn: aComposite forSession: self session forContext: aContext ]
	