as yet unclassified
positionOnBorderHorizontal

	((self shapes bar position x - (self barWidth / 2)) < (self shapes surroundingRectangle encompassingRectangle origin x)) ifTrue: [ self shapes bar translateTo: ((self shapes surroundingRectangle encompassingRectangle origin x) + (self barWidth / 2))@(self shapes surroundingRectangle position y)].
	((self shapes bar position x + (self barWidth / 2)) > (self shapes surroundingRectangle encompassingRectangle corner x)) ifTrue: [ self shapes bar translateTo: ((self shapes surroundingRectangle encompassingRectangle corner x) - (self barWidth / 2))@(self shapes surroundingRectangle position  y)].