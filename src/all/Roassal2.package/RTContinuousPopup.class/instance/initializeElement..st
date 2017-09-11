initialization
initializeElement: element
	| close |
	view := element view.
	close := [ :evt | 
		self removeLastPopup.
		evt signalUpdate ].
	element 
		when: TRMouseClick do: close;
		when: TRMouseLeave do: close;
		when: TRMouseDragging do: close;
		when: TRMouseMove
		do: [ :event |
			(self validPoint: event position)
				ifTrue: [ self createAndShowPopupFor: element event: event ]
				ifFalse: [ close value: event ] ].