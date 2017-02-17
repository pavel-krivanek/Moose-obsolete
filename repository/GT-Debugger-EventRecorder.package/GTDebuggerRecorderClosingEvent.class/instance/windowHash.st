accessing
windowHash
	^ self infoAt: #windowHash ifAbsent: [ nil ]