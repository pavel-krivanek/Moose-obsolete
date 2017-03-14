accessing
nrUniqueTypes
	| nr |
	nr := 0.
	self
		withAllInstvarResultsDo:
			[:cl :ivar :typeResult | typeResult isSingularType ifTrue: [nr := nr + 1]].
	^nr