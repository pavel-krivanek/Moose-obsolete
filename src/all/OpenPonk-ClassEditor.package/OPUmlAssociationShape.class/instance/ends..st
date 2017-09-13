Roassal2 - updating
ends: anArray
	| ends |
	ends := anArray.
	ends first modelElement = sourceEndLabels modelElement type
		ifFalse: [ ends := ends reverse ].
	self source: ends first.
	self target: ends second