handling - lexical
xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean
	self messageRecorder
		recordMessageReceiver: self
		selector: #xmlVersion:encoding:standalone:
		arguments:
			(OrderedCollection new
				addLast: aVersionFloat;
				addLast: anEncoding;
				addLast: aBoolean;
				yourself)