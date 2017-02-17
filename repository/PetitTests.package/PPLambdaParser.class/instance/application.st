productions
application
	^ $( asParser trim , expression , expression , $) asParser trim 
			==> [ :node | Array with: (node at: 2) with: (node at: 3) ]