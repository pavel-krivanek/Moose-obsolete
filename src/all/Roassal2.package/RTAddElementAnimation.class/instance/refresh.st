refreshing
refresh
	| t f a |
	t := animatedValue value.
	shapes doWithIndex: [ :e :i | 
		e translateTo: center.
		f := i * 0.5 / shapes size.
		(t - f) > 0 ifTrue: [ 
			a := side interpolateTo: 0 at: (t - f).
			
			e extent: a @ a  ]
		 ].
	element signalUpdate.
	