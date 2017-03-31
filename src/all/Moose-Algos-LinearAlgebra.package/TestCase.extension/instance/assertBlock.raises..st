*Moose-Algos-LinearAlgebra
assertBlock: aBlock raises: anExceptionalEvent
	
	^[aBlock value.
	false]
		on: anExceptionalEvent
		do: [:ex | ex return: true]