adding
barDragHorizontal
	"Animation for a horizontal drag of the bar"
	self shapes bar when: TRMouseDragging do: [ :evt |
			
		(self encompassingRectangle containsPoint: (self view canvas camera position)) 
			ifFalse: [ (self view canvas camera) translateTo:  ((self encompassingRectangle) pointNearestTo: (self view canvas camera position))  ].
			
		(self shapes margeRectangle includesPoint: (self shapes bar position + ((evt step x)@0))) & (self shapes surroundingRectangle includesPoint: (evt position x)@(self shapes bar position y)) 
			ifTrue: [  
				self shapes bar translateBy: (evt step x)@0.
				self view canvas camera translateBy: (self translationHorizontal: evt).
				].
			
		self view signalUpdate.
		]