accessing
standalone: aBooleanOrString
	standalone :=
		aBooleanOrString isString
			ifTrue: [aBooleanOrString = 'yes']
			ifFalse: [aBooleanOrString]