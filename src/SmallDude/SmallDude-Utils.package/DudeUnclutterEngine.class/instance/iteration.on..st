engine
iteration: minDist on: clutteredData 
	 
	| last upperBound mod uData | 
	uData := OrderedCollection withAll: clutteredData. 
	upperBound := upperLimit - minDist. 
	mod := false. 
	last := upperLimit. 
	uData 
		doWithIndex: 
			[:m :i |  
			| dist | 
			dist := last - m. 
			dist < minDist 
				ifTrue: 
					[| shift | 
					mod := true. 
					shift := ((minDist - dist) / 2) ceiling. 
					uData 
						at: i 
						put: m - shift. 
					i > 1 
						ifTrue: 
							[| nld | 
							nld := last + shift. 
							nld > upperBound 
								ifTrue: 
									[uData 
										at: i - 1 
										put: upperBound. 
									upperBound := upperBound - minDist. 
									uData at: i put: upperBound] 
								ifFalse: 
									[uData 
										at: i - 1 
										put: nld]]]. 
			last := uData at: i]. 
	mod 
		ifTrue: [^uData] 
		ifFalse: [^clutteredData]	"changes have been made"	"no change needed"