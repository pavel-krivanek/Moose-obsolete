end-phase
isEndConditionWith: descNodes

	"do the descendants converege to a bottom node. If, so how many of those?"
	| flag |
	flag := false.
		1 to: (descNodes size -1 ) 
		do: [:n | 	(n+1 to: (descNodes size))
			do:[:m | ((self hasSingleBottom: (descNodes at:n)) and: [self hasSingleBottom: (descNodes at: m)])
				ifTrue: [
						(((descNodes at:n) descendants first = (descNodes at: m) descendants first) and: [((descNodes at:n) descendants first ~= self lattice bottom)])
							ifTrue: [
								self candidate: (descNodes at: m). 
								self candidate: (descNodes at: n).  
								self candidate: (descNodes at:n) descendants first. 
								flag := true.
							]
					]
				]
		].
	flag ifTrue: [self removeFalseCandidates: descNodes. ^ true].		
	^ flag