visitor-double dispatching
visitCascadeNode: aCascadeNode 
	 
	aCascadeNode messages isEmpty 
		ifFalse: 
			[aCascadeNode messages yourself do: [:each | self visitNode: each]]. 
	self extractCommentsFromNode: aCascadeNode