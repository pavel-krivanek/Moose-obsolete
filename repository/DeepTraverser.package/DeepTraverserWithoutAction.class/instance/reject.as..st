enumerating
reject: aBlock as: aCollectionClass
	^ self select: [ :each | (aBlock value: each) not ] as: aCollectionClass