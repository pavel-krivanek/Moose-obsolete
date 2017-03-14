as yet unclassified
barHeight
	"To get the height of the bar for the vertical scroll bar."
	(self barSpecific = #scalable) ifTrue: [
		| max min s |
		
		max := self size -50.
		min := 30.
			
		s := (self size * (self view canvas extent y) / (self encompassingRectangleFromSpaceToPixel height) / self view canvas camera scale).
		
		(s > max) ifTrue: [ ^max ].
		(s < min) ifTrue: [ ^min ].
		^ s.
		
		] ifFalse: [ ^ self width]