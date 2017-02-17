*Geometry
has: aPoint onTheSameSideAs: p
	(self x <= p x) 
		ifTrue:[ self y <= p y
			ifTrue:[ ^ (self x <= aPoint x) and:[ self y <= aPoint y ] ]
			ifFalse:[ ^ (self x <= aPoint x) and:[ self y > aPoint y ] ] ]
		ifFalse:[ self y <= p y
			ifTrue:[ ^ (self x > aPoint x) and:[ self y <= aPoint y ] ]
			ifFalse:[ ^ (self x > aPoint x) and:[ self y > aPoint y ] ] ]
	 