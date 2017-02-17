adding
addAllExtensions: extCollection 
	 
	^extCollection do: [:each | self addClassExtension: each]