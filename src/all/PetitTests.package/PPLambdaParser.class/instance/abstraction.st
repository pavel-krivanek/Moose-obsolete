productions
abstraction
	^ $\ asParser trim , variable , $. asParser trim , expression 
		==> [ :node | Array with: (node at: 2) with: (node at: 4) ]