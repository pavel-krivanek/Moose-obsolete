selection
selectWhereAnyFragment: aBlock 
	 
	^self 
		select: 
			[:aMultiplication |  
			| sel | 
			sel := false. 
			aMultiplication fragments 
				do: [:elem | (aBlock value: elem) ifTrue: [sel := true]]. 
			sel]