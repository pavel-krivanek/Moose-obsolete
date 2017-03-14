public
connectFrom: aFromBlock toAll: aBlockOrASymbol

	| fromElement tes |
	self resetCreatedEdges.
	self fromElements copy do: [ :e | 
		fromElement := self fromElements elementFromModel: (aFromBlock rtValue: e model).
		tes := self toElements elementsFromModels: (aBlockOrASymbol rtValue: e model).
		tes ifNotNil: [ 
			tes do: [ :toE | 
				self createEdgeIfNecessaryFrom: fromElement to: toE ] ] ].
	self moveBehindIfNecessary: createdEdges.
	^ createdEdges 