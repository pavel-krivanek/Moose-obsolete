*moose-algos-formalconceptanalysis
cardinality
	"Answer the number of bit set to 1, ie true."

	| tally |
	tally := 0.
	self bitMaskDo: [ :index | 
		tally := tally + 1 ].
	^tally