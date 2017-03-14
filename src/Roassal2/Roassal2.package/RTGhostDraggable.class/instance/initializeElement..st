hooks
initializeElement: anElement
	anElement announcer when: TRMouseDragStart send: #dragStart: to: self.
	anElement announcer when: TRMouseDragging send: #dragging: to: self.
	anElement announcer when: TRMouseDragEnd send: #dragEnd: to: self