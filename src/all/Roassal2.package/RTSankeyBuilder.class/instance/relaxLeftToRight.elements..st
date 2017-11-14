private
relaxLeftToRight: alpha elements: elementsByBreadth
	| tl weightedSource value y|
	value := [ :e | e attributes at: #value ].
	weightedSource := [ :ed | (self centerOf: ed from) * (value value: ed) ].
	elementsByBreadth do: [ :nodes|
		nodes do: [ :node |
			tl := node attributes at: #targetLinks.
			tl ifNotEmpty: [ 
				y := (tl sum: weightedSource)/ (tl sum: value).
				node attributes at: #y put: (node attributes at: #y)+ ((y - (self centerOf: node))*alpha) ] ] ]