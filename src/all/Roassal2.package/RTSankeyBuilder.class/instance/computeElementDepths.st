private
computeElementDepths
	| elementsByBreadth alpha |
	elementsByBreadth := elements groupedBy: [ :e | e attributes at: #x ].
	elementsByBreadth := elementsByBreadth keysSortedSafely 
		collect: [:k | elementsByBreadth at: k ].
	elementsByBreadth ifEmpty: [ ^ self ].
	elementsByBreadth last do: [ :e |
		e attributes at: #last put: true ].
	self initializeElementsDepth: elementsByBreadth.
	self resolveCollisions: elementsByBreadth.
	alpha := 1.
	1 to: iterations do: [ :i |
		self relaxRightToLeft: (alpha := alpha *0.99) elements: elementsByBreadth.
		self resolveCollisions: elementsByBreadth.
		self relaxLeftToRight: alpha elements: elementsByBreadth.
		self resolveCollisions: elementsByBreadth.]
	
	