private
initializeElementsDepth: elementsByBreadth
	| value ky |
	value := [ :e | e attributes at: #value ].
	ky := elementsByBreadth inject: Float fmax into: [ :min :arr|
		min min: ((extent y - ((arr size - 1) * nodePadding ))/ 
		(arr inject: 0 into: [ :sum :e| (value value: e)+ sum])) ].
	elementsByBreadth do: [ :arr| 
		arr doWithIndex: [ :e :i| 
			e attributes 
				at: #y put: i - 1;
				at: #dy put: (value value: e)*ky ].
		].
	edges do: [ :e | e attributes at: #dy put: (value value: e)*ky ].