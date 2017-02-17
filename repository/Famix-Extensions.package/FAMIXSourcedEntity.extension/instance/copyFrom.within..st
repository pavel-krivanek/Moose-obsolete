*Famix-Extensions
copyFrom: anEntity within: aVisitor

	sourceAnchor := 	aVisitor visit: anEntity sourceAnchor.
	anEntity comments do: [:com | 
		self comments add: (aVisitor visit: com) ].
