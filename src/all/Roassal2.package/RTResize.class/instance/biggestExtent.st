accessing - computed
biggestExtent
	fixedElement ifNotNil: [ ^ fixedElement extent ].
	^ elements inject: 0 @ 0 into: [ :maxExtent :e | 
			maxExtent max: e extent ] 