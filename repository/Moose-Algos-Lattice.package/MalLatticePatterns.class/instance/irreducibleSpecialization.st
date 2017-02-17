complex
irreducibleSpecialization
	
	| dict |
	dict := Dictionary new.
	self lattice nodes do: [:aNode | (self IsSuperConceptSpecialization: aNode) ifTrue: [aNode descendants do:[:aDes | (self IsSubConceptSpecialization: aDes) ifTrue: [dict at: aNode put: aDes] ] ]].
	^dict 
		