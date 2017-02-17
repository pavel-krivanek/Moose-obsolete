end-phase
removeFalseCandidates: descNodes

	
	descNodes do: [:each | 
		(self hasSingleBottom: each)
			ifFalse: [self candidate remove:each]
		]
	