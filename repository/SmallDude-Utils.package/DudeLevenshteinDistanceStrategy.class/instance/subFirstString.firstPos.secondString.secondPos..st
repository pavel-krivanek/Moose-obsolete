private
subFirstString: string1 firstPos: int1 secondString: string2 secondPos: int2 
	 
	(string1 at: int1) = (string2 at: int2) 
		ifTrue: [^0] 
		ifFalse: [^1]