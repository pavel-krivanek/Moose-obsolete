comparing
equal: circ withApproximation: aNumber
"self halt."
	^( (self radius - circ radius ) abs < aNumber )
	and:[ 
		( (self center x - circ center x)abs < aNumber)
		""and:[  (self center y - circ center y)abs < aNumber ]""
		]


