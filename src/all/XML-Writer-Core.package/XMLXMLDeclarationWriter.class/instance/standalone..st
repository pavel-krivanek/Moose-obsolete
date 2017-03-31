accessing
standalone: aBooleanOrString
	aBooleanOrString isString
		ifTrue: [standalone := aBooleanOrString = 'yes']
		ifFalse: [standalone := aBooleanOrString].