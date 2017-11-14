helpers-primitives
withReceiver: anObject perform: selector withArguments: argArray
	^self withReceiver: anObject perform: selector withArguments: argArray inClass: (self extractClassOf: anObject)