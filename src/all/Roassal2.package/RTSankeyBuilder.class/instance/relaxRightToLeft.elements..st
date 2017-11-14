private
relaxRightToLeft: alpha elements: elementsByBreadth
	| sl y weightedTarget value |
	value := [ :e | e attributes at: #value ].
	weightedTarget := [ :ed | (self centerOf: ed to) * (value value: ed) ].
	
	elementsByBreadth reversed do: [ :nodes | 
		nodes do: [ :node | 
			sl := node attributes at: #sourceLinks.
			sl ifNotEmpty: [ 
				y := (sl sum: weightedTarget)/ (sl sum: value).
				node attributes at: #y put: (node attributes at: #y) + ((y - (self centerOf: node)) * alpha) ] ].
	 ].