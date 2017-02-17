as yet unclassified
- anotherPoint
	^ TRVIAnimatedPoint new 
		x: [ self x value - (anotherPoint x) ];
		y: [ self y value - (anotherPoint y) ];
		yourself
		
"	^ VIAnimatedPoint new 
		x: [ :time | (self x value: time) + (anotherPoint x value: time) ];
		y: [ :time | (self y value: time) + (anotherPoint y value: time) ];
		yourself"