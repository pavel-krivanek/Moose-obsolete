rendering
renderIn: aView
	super renderIn: aView.
	self addConstraintsTo: constraints at: #middle.
	sourceEndLabels addConstraintsTo: constraints at: #source.
	targetEndLabels addConstraintsTo: constraints at: #target.
	self ownedElements do: [ :each | each renderIn: view ].
	constraints do: #build.
	self update