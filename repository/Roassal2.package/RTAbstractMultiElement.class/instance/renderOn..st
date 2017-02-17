rendering
renderOn: trachelCanvas
	super renderOn: trachelCanvas.
	ownedElements
		do: [ :c | 
			c
				update;
				renderOn: trachelCanvas ].
	self addInteractions.
	self update.
	self trachelShape triggerCallbacksForStep: 0 @ 0