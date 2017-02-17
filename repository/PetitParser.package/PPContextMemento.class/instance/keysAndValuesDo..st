accessing - properties
keysAndValuesDo: aBlock
	properties ifNil: [ ^ self ].
	properties keysAndValuesDo: [ :key :value | aBlock value: key value: value copy ] 