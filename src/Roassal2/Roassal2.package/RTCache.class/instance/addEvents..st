private
addEvents: bitmap
	bitmap when: TRMouseMove do: [ :evt| self processMouseMove: evt. ].
	bitmap when: TRMouseDragging do: [ :evt | self processMouseDrag: evt ].
	bitmap when: TRMouseClick do: [ :evt | self processMouseClick: evt ].