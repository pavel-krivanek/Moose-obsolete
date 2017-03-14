accessing
resolve: name ifAbsent: aBlock 
	 
	^dictionary 
		at: name 
		ifAbsent: 
			[parent ~~ nil 
				ifTrue: [parent resolve: name ifAbsent: aBlock] 
				ifFalse: [aBlock value]]