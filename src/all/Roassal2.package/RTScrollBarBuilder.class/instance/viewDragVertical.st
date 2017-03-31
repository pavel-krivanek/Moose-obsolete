adding
viewDragVertical
	"Animation for a vertical drag of the view"
	self view when: TRMouseDragging do: [ :evt | 
		| translation |
		translation := (self reverseTranslationVertical: evt).
		((self shapes margeRectangle includesPoint: (self shapes bar position + translation))) ifTrue: [ 
			shapes bar translateBy: translation.
			self view signalUpdate
			]. 
		].
