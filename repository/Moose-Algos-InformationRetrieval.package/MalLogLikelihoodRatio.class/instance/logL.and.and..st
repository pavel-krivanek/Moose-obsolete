computing
logL: p and: k and: n
	
	^0 = k
		ifTrue: [0]
		ifFalse:
			[k * p ln
				+
					(0 = (n - k)
						ifTrue: [0]
						ifFalse: [(n - k) * (1 - p) ln])]