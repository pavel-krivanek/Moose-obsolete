as yet unclassified
positionOnBorderVertical

	((self shapes bar position y - (self barHeight / 2)) < (self shapes surroundingRectangle encompassingRectangle origin y)) ifTrue: [ self shapes bar translateTo: (self shapes surroundingRectangle position  x)@(self shapes surroundingRectangle encompassingRectangle origin y + (self barHeight / 2))].
	((self shapes bar position y + (self barHeight / 2)) > (self shapes surroundingRectangle encompassingRectangle corner y)) ifTrue: [ self shapes bar translateTo: (self shapes surroundingRectangle position  x)@(self shapes surroundingRectangle encompassingRectangle corner y - (self barHeight / 2))].
