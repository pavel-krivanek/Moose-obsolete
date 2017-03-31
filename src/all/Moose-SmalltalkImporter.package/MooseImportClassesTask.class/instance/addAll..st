adding
addAll: classCollection 
	 
	^classCollection do: [:each | self addClass: each]