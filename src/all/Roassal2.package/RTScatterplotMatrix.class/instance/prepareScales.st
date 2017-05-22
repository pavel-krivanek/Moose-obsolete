helpers
prepareScales
	| domain range x y m value | 
	xScales := Dictionary new.
	yScales := Dictionary new.
	m := self metrics.
	
	m keys do: [ :k |
		value := m at: k.
		domain := Array 
			with: (value value: (objects minFor: value)) 
			with: (value value: (objects maxFor: value)).
		range := Array with: (padding /2)-(boxSize /2) with: (boxSize/2) - (padding/2).
		x := RTScale linear domain: domain; range: range.
		y := RTScale linear domain: domain; range: range reverse.
		xScales at: k put: x.
		yScales at: k put: y ].