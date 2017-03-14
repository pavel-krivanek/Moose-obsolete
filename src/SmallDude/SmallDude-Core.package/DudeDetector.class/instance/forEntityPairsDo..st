accessing
forEntityPairsDo: block 
	 
	| size entitiess | 
	entitiess := self codeBase keys asOrderedCollection. 
	size := entitiess size. 
	observer start: (size * size + size) // 2. 
	1 
		to: size 
		do: 
			[:row |  
			| rowEntity | 
			rowEntity := entitiess at: row. 
			row 
				to: size 
				do: 
					[:col |  
					| colEntity | 
					observer increment. 
					colEntity := entitiess at: col. 
					block value: rowEntity value: colEntity]]. 
	observer stop