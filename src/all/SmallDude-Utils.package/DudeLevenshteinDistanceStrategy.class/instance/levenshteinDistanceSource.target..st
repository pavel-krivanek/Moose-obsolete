private
levenshteinDistanceSource: sourceString target: targetString 
	 
	| sourceSize targetSize aMatrix | 
	sourceSize := sourceString size. 
	targetSize := targetString size. 
	aMatrix := MalArrayMatrix new: (sourceSize + 1) @ (targetSize + 1). 
	aMatrix at: 1 and: 1 put: 0. 
	1 
		to: targetSize 
		do: 
			[:j |  
			aMatrix 
				at: 1 
				and: j + 1 
				put: (aMatrix at: 1 and: j) + (self insString: targetString pos: j)]. 
	1 
		to: sourceSize 
		do: 
			[:i |  
			aMatrix 
				at: i + 1 
				and: 1 
				put: (aMatrix at: i and: 1) + (self delString: sourceString pos: i). 
			1 
				to: targetSize 
				do: 
					[:j |  
					aMatrix 
						at: i + 1 
						and: j + 1 
						put: 
							(self 
								minFirst: 
									(aMatrix at: i and: j) 
										+ 
											(self subFirstString: sourceString firstPos: i secondString: targetString 
												secondPos: j) 
								second: 
									(aMatrix 
										at: i 
										and: j + 1) + (self delString: sourceString pos: i) 
								third: 
									(aMatrix 
										at: i + 1 
										and: j) + (self insString: targetString pos: j))]]. 
	^aMatrix 
		at: sourceSize + 1 
		and: targetSize + 1