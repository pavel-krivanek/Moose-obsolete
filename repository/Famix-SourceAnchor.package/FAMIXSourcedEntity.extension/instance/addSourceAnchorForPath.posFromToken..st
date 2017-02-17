*Famix-SourceAnchor
addSourceAnchorForPath: aPath posFromToken: aToken
	"
	May be should not create the sourceAnchor ?
	Above comment from NicolasAnquetil.58
	aToken ifNil: [ ^self ].
	"
	self 
		addSourceAnchorForPath: aPath 
		startPosition: (aToken ifNotNil: [ aToken startPosition ]) 
		endPosition: (aToken ifNotNil: [ aToken endPosition ])