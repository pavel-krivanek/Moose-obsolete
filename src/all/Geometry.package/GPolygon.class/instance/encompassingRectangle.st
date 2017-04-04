accessing
encompassingRectangle
	|leftMost rightMost top bottom|
	leftMost := vertices first. 
	rightMost := vertices first.
	top := vertices first. 
	bottom:= vertices first.
	vertices allButFirst do:[ :v | 
		(v y > top y) ifTrue:[ top := v ].
		(v y < bottom y) ifTrue:[ bottom := v ].
		(v x < leftMost x) ifTrue:[ leftMost := v ].
		(v x > rightMost x) ifTrue:[ rightMost := v ]].
	^Rectangle left: leftMost x right: rightMost x top: top y bottom: bottom y