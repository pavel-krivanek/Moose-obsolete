initialization
initialize
	super initialize.
	self headDecorator: OPUmlEdgeMarkers arrow.
	(nameLabel := OPUmlNameLabel new)
		text: [ :model | self textFor: model ];
		owningElement: self.
	constraints := OrderedCollection new