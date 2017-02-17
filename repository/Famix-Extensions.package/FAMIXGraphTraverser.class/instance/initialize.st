visiting
initialize 
	visited := IdentitySet new.
	graph := MalGraphStructure new 
		nodeClass: MalNodeWithPreviousAndNext;
		yourself.