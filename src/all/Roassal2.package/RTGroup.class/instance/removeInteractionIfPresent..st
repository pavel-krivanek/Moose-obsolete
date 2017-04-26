actions
removeInteractionIfPresent: anInteractionClass
	"Remove an interaction, if present, on each element contained in the group
	
	For example:
	-=-=-=-=-=
	v := RTView new.
	elements := RTEllipse new size: 20; elementsOn: (1 to: 20).
	v addAll: elements.
	RTGridLayout on: elements.

	relevantElements := elements select: [ :e | e model < 10 ].
	relevantElements do: [ :e | e trachelShape color: Color blue ].

	d := RTDraggable new groupToDrag: relevantElements.
	v canvas addMenu: 'add group dragging' callback: [
		relevantElements @ d.
	].

	v canvas addMenu: 'remove group dragging' callback: [
		relevantElements removeInteractionIfPresent: RTDraggable
	].
	v
	-=-=-=-=-=
	"
	self do: [ :e | e removeInteractionIfPresent: anInteractionClass ]