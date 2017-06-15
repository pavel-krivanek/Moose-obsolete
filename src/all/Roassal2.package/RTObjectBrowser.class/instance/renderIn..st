hooks
renderIn: aView
	view := aView.
	target ifNotNil: [ 
		self addNewObject: target].