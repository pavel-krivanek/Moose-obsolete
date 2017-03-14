*moose-algos-formalconceptanalysis
upToPlusIndex: index isLargerThan: extent

	| mask |
	^1 == (self bitAt: index) and: [
		0 == (extent bitAt: index) and: [
			mask := Integer maskTrue: index - 1.
			(self bitAnd: mask) = (extent bitAnd: mask) ]]