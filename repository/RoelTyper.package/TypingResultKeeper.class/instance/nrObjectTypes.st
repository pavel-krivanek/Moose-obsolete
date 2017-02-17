accessing
nrObjectTypes
	| nr |
	nr := 0.
	self
		withAllInstvarResultsDo:
			[:cl :ivar :typeResult | (typeResult is: Object) ifTrue: [nr := nr + 1]].
	^nr