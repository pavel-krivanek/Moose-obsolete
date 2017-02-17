hooks
initializeElement: view
	| actions |
	aView := view.
	edges := aView edges.
	edges do: #remove.
	actions := Array 
		with: 'Add box from and to'-> [ self addBox trachelShape condition: [ :rec :ed| 
			(rec containsPoint: ed from position) and: [ rec containsPoint: ed to position ] ] ]
		with: 'Add box from'->[ self addBox trachelShape condition: [ :rec :ed |
			rec containsPoint: ed from position ] ]
		with: 'Add box to'->[ self addBox trachelShape condition: [ :rec :ed |
			rec containsPoint: ed to position ] ]
		with: 'Add box (from or to)'-> [ self addBox trachelShape condition: [ :rec :ed |
			(rec containsPoint: ed from position) or: [ rec containsPoint: ed to position ]] ].
	aView when: TRMouseRightClick do: [ :evt |
		lastClick := evt.
		TRUtil instance widgetFactory menuForAssociations: actions on: aView ].
		