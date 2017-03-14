hooks
initializeElement: element
	view := element.
	draggingView := false.
	view canvas when: TRMouseRightDragStart do: [ draggingView := true ].
	view canvas when: TRMouseLeftDragStart do: [ :e |
		draggingView := false.
		startPoint := (e positionFromCamera - center value). ].
	view canvas when: TRMouseDragging do: [ :e | 
		draggingView
			ifTrue: [ self dragViewWithEvent: e]
			ifFalse: [ self updateTargetElements: e ]  ].
	view canvas when: TRMouseDragEnd do: [ draggingView := false ].
	