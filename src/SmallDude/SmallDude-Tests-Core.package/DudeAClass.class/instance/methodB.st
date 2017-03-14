public interface
methodB
	| a b c |
	a := 0.
	b := 1.
	c := 2.
	a = 0 ifTrue: [
		b = 1 ifTrue: [
			c = 2 ifTrue: [
				Transcript show: 'Daaaaa!'
			]
		]
	].
	^a + b + c