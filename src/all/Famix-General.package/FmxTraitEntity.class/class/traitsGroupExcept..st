accessing
traitsGroupExcept: aSetOfTraits
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses copy.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	