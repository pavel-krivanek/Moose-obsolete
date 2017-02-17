enumerating
queryValuesAt: aKey do: aBlock
	self queryKeysAndValuesDo: [:key :value |
		key = aKey
			ifTrue: [aBlock value: value]]