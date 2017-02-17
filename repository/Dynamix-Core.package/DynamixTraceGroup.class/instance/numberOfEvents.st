helpers
numberOfEvents
	| nom |
	nom := 0.
	self entities do: [:eachTrace | nom := nom + ( eachTrace activations size) ].
	^nom.