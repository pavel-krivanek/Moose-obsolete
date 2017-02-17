enumerating by version index
versionsIndexFrom2Do: aBlock
	
	^2
		to: versions size
		do: [:i | aBlock value: i]