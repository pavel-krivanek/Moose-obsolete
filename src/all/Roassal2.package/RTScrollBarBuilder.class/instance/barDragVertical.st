adding
barDragVertical
	"Animation for a horizontal drag of the bar"
	self shapes bar when: TRMouseDragging do: [ :evt |
		
		(self encompassingRectangle containsPoint: (self view canvas camera position)) 
			ifFalse: [ (self view canvas camera) translateTo:  ((self encompassingRectangle) pointNearestTo: (self view canvas camera position))  ].
			
		(self shapes margeRectangle includesPoint: (self shapes bar position + (0@(evt step y)))) & (self shapes surroundingRectangle includesPoint: (self shapes bar position x)@(evt position y)) 
			ifTrue: [  
				self shapes bar translateBy: 0@(evt step y).
				self view canvas camera translateBy: (self translationVertical: evt).
				].
		
		self view signalUpdate.
		]