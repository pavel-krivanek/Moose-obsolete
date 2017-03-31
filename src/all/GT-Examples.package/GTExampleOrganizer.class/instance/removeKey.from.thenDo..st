private-maintenance
removeKey: aKey from: aDictionary thenDo: aBlock
	aBlock value: (aDictionary removeKey: aKey ifAbsent: [ ^ nil ])