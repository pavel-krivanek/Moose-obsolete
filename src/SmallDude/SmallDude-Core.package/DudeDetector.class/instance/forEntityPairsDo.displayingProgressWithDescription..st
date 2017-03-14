accessing
forEntityPairsDo: block displayingProgressWithDescription: descriptionString 
	 
	| size entitiess | 
	entitiess := self codeBase keys asOrderedCollection. 
	size := entitiess size. 
	observer start: (size * size + size) // 2. 
	MooseCustomTask 
		runWithProgress: [: bar | 
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
							block value: rowEntity value: colEntity].
							bar increment.	
					]. 
				]
		 description: descriptionString
		 length: size.
	
	observer stop