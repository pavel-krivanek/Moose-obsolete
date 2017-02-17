public interface
methodA
	| a b c |
	a := 0.
	b := 1.
	c := 2.
	a = 0 ifTrue: [
		b = 1 ifTrue: [
			c = 2 ifTrue: [ "bla bla bla"
				Transcript show: 'Daaaaa!'
			]
		]
	].
	^a + b + c