private
applyTension: points
	| n p1 dp p t |
	n := points size - 1.
	p1 := points first.
	dp := points last - p1.
	2 to: n do: [ :i| 
		p := points at: i.
		t := (i-1) / n.
		points at: i put: ((tension * p) + ((1-tension) *(p1+(t * dp) )) ) ].
	
	^ points