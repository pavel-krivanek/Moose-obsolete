hooks
initializeElement: anElement
	view := anElement.
	view removeInteractionIfPresent: RTDraggableView.
	draggingView := false.
	view canvas when: events first do: [ :e | draggingView := true ].
	view canvas
		when: events second
		do: [ :e | 
			draggingView := false.
			self selectionStartFromEvent: e ].

	view canvas
		when: TRMouseDragging
		do:
			[ :e | 
			draggingView
				ifTrue: [ self dragViewWithEvent: e ]
				ifFalse: [ self updateSelectableShapeWithEvent: e ] ].

	view canvas
		when: TRMouseDragEnd
		do:
			[ :e | 
			draggingView
				ifTrue: [ draggingView := false ]
				ifFalse: [ self selectionEndFromEvent: e ] ]