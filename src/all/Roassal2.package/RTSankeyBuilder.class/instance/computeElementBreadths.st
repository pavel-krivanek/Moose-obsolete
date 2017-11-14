private
computeElementBreadths
	"Iterative assig the breadth (x-position) for each node"
	| remainingElements nextElements x kx |
	x := 0.
	remainingElements := elements.
	[remainingElements size isZero not] whileTrue: [ 
		nextElements := OrderedCollection new.
		remainingElements do: [ :el| 
			el attributes at: #x put: x.
			(el attributes at: #sourceLinks) do: [:ed |
				nextElements add: ed to. ] ].
		remainingElements := nextElements.
		x := x+1.
	 ].
	"move sinks right and scale"
	kx := extent x/ (x -1).
	elements do:[ :el| | temp |
		(el attributes at: #sourceLinks) size isZero ifTrue: [ 
			el attributes at: #x put: x -1 ].
		temp := el attributes at: #x.
		el attributes at: #x put: (temp * kx) asFloat.
		 ].
	