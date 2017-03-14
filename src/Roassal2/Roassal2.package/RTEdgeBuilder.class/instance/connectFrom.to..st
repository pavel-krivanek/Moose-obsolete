public
connectFrom: aFromBlock to: aBlockOrASymbol
	| toElement fromElement |
	self resetCreatedEdges.
	self fromElements copy
		do: [ :e | 
			fromElement := self fromElements elementFromModel: (aFromBlock rtValue: e model).
			toElement := self toElements elementFromModel: (aBlockOrASymbol rtValue: e model).
			toElement ifNotNil: [ self createEdgeIfNecessaryFrom: fromElement to: toElement ] ].
	self moveBehindIfNecessary: createdEdges.
	^ createdEdges