engine
getMultiplicationsWith: minSizeDupChain withSizeOfExactChunk: minSizeExactChunk withLineBias: maxLineBias
	| temp |
	fragments := Dictionary new.
	self forEntityPairsDo: [:rowEntity :colEntity |
			self multisFor: rowEntity and: colEntity withChainLen: minSizeDupChain
				withSizeOfExactChunk: minSizeExactChunk withLineBias: maxLineBias].
	temp := (fragments values asSet collect: [:aMulti |
			self mooseModel add: aMulti.
			aMulti]) asOrderedCollection.
	fragments := nil.
	^temp