private - bar management
barWidth
	 "To get the width of the bar for the horizontal scroll bar. To change the width of the bar in general see #width:"
	(self barSpecific = #scalable) ifTrue: [
		| max min s |
		
		max := self size -50.
		min := 30.
		
		s := (self size * (self view canvas extent x) / (self encompassingRectangleFromSpaceToPixel width) / self view canvas camera scale).
		
		(s > max) ifTrue: [ ^max ].
		(s < min) ifTrue: [ ^min ].
		^ s.
		] ifFalse: [ ^ self width]