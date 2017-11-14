accessing
headerAt: aKey ifAbsent: aBlock
	self zincResponse headers
		at: aKey
		ifPresent: [:value |
			^ value isArray
				ifTrue: [value first]
				ifFalse: [value]].
	^ aBlock value