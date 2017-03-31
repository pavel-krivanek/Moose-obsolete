signalling
signalUpdatePosition
	| pr pos sizeNow |
	
	pos := self fixedPosition.
	sizeNow := self size.
		
			(self orientation = #horizontal) ifTrue: [	
				pr := (((self view canvas camera position x) - (self encompassingRectangle origin x)) / (self encompassingRectangle width)) * sizeNow.
				self shapes surroundingRectangle position: pos.
				self shapes bar position: (pr + (self shapes surroundingRectangle encompassingRectangle origin x ))@(pos y).
				self positionOnBorderHorizontal.	
				].
			
			(self orientation = #vertical) ifTrue: [		
				pr := (((0@(self view canvas camera position y)) dist: (0@(self encompassingRectangle origin y))) / (self encompassingRectangle height)) * (self shapes surroundingRectangle height).
				self shapes surroundingRectangle position: pos.
				self shapes bar position: (pos x)@(pr + (self shapes surroundingRectangle encompassingRectangle origin y)).
				self positionOnBorderVertical.
			].
		
		self shapes margeRectangle position: pos.	