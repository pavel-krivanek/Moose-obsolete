grammar
parentheses
	^ $( asParser trim , terms , $) asParser trim
		==> [ :nodes | nodes at: 2 ]