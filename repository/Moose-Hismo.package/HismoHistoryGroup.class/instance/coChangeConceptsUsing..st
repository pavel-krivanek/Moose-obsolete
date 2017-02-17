co-change
coChangeConceptsUsing: aBlock
	
	| fca |
	fca := MalFormalContext new.
	fca with: self using: #yourself using: aBlock.
	^fca concepts