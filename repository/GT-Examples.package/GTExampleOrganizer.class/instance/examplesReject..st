enumeration
examplesReject: aBlock
	^ self examplesSelect: [ :example | (aBlock value: example) not ]