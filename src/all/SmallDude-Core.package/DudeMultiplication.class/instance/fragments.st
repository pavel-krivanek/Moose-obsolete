accessing
fragments 
	 
	| fragments | 
	fragments := Set new. 
	self duplications 
		do: 
			[:dup |  
			fragments add: dup referenceCode. 
			fragments add: dup duplicateCode]. 
	^fragments asOrderedCollection