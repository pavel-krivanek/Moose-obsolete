as yet unclassified
computeElementDepths: edges
	| elementsByBreadth ky value alpha |
	elementsByBreadth := elements groupedBy: [ :e | e attributes at: #x ].
	elementsByBreadth := elementsByBreadth keysSortedSafely 
		collect: [:k | elementsByBreadth at: k ].
	value := [ :e | e attributes at: #value ].
	ky := elementsByBreadth inject: Float fmax into: [ :min :arr|
		min min: ((extent y - ((arr size - 1) * nodePadding ))/ 
		(arr inject: 0 into: [ :sum :e| (value value: e)+ sum])) ].
	elementsByBreadth do: [ :arr| 
		arr doWithIndex: [ :e :i| 
			e attributes 
				at: #y put: i;
				at: #dy put: (value value: e)*ky ].
		].
	edges do: [ :e | e attributes at: #value put: (value value: e)*ky ].
	self resolveCollisions: elementsByBreadth.
	alpha := 1.
	1 to: iterations do: [ :i |
		alpha := alpha *0.99. 
		self relaxRightToLeft: alpha.
		self resolveCollisions: elementsByBreadth.
		self relaxLeftToRight: alpha.
		self resolveCollisions: elementsByBreadth.].
	
	