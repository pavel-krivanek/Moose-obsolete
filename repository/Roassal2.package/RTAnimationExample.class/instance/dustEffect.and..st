sources
dustEffect: e and: v
	| e2 anim |
	e2 := (RTEllipse new 
		size: 10; 
		color: (Color random alpha: 0.5)) element.
	v add: e2.
	e2 translateTo: e position.
	anim := RTAccelerationMove to: 
		e2 position + ((30 atRandom - 15) @ (30 atRandom - 15)) during: 3 on: e2.
	anim after: [ anim element remove. ].
	v addAnimation: anim