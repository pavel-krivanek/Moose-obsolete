util
createShapeForView
	| s block g |
	s := super createShapeForView.
	s @ RTDraggable.
	s @ RTResizable.
	block := [ g := self getElementsWith: s.
		g removeAllFoundIn: groups.
		self removeSelection: view elements.
		g := condition rtValue: g.
		self brush: g ].
	s addCallback: (TRTranslationCallback new block: block).
	s addCallback: (TRExtentCallback new block: block).
	^ s