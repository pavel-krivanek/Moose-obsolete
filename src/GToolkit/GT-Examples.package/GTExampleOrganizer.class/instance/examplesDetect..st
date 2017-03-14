enumeration
examplesDetect: aBlock
	self examplesDo: [ :class :selector :example | 
		(aBlock value: example) ifTrue: [ ^ example ] ].
	^ nil