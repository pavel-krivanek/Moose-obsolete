*moose-algos-formalconceptanalysis
copyUpToPlusIndex: index

	| bit mask |
	bit := Integer maskBit: index.
	mask := Integer maskTrue: index - 1.
	^(self bitAnd: mask) maskSet: bit