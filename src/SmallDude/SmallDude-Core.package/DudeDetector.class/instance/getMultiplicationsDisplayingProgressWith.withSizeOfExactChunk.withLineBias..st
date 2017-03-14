engine
getMultiplicationsDisplayingProgressWith: minSizeDupChain withSizeOfExactChunk: minSizeExactChunk withLineBias: maxLineBias 
	| temp |
	fragments := Dictionary new.
	
	self forEntityPairsDo: [:rowEntity :colEntity |
		self multisFor: rowEntity and: colEntity withChainLen: minSizeDupChain
		withSizeOfExactChunk: minSizeExactChunk withLineBias: maxLineBias.
			] displayingProgressWithDescription: 'computing duplications'.
				
	MooseCustomTask 
		runWithProgress: [:bar |
			temp := (fragments values asSet collect: [:aMulti |
			self mooseModel add: aMulti.
			bar increment.
			aMulti
			]) asOrderedCollection.
			] 
		description:  'adding multiplications to the model'
		length: fragments size.
	
	fragments := nil.
	^temp