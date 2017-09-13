tests
testWriteMultiplicityMany
	| prop pairs |
	prop := OPUMLProperty new.
	pairs := {'0..1' -> #(0 1).
	'4' -> #(4 4).
	'3..*' -> #(3 '*').
	'*' -> #(0 '*')}.
	pairs
		do: [ :pair | 
			controller writeMultiplicityFrom: pair key to: prop.
			self assert: prop lowerBound equals: pair value first.
			self assert: prop upperBound value equals: pair value second ]