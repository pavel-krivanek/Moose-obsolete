enumerating
headerKeysDo: aBlock
	self headerKeysAndValuesDo: [:key :value |
		aBlock value: key]