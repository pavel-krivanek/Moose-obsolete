*moose-algos-formalconceptanalysis
bitMaskDo: aBlock
	"Evaluates aBlock with the index of all bits that are set true."

	| mask |
	mask := 1.
	1 to: self class maxBits do: [ :index |
		(mask anyMask: self) ifTrue: [ aBlock value: index ].
		mask := mask << 1 ].