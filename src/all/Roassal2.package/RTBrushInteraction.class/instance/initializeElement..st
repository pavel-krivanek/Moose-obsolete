initialization
initializeElement: aView
	| b |
	super initializeElement: aView.
	b := [ :evt | 
		super removeShape.
		self removeSelection: view elements ].
	
	self when: RTSelectionStart do: b. 
	aView when: TRMouseClick do: b.