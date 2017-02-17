instance creation
on: aStringOrStream readLimit: aReadLimit
	^ self new
		setStream:
			(aStringOrStream isStream
				ifTrue: [aStringOrStream]
				ifFalse: [aStringOrStream readStream])
		readLimit: aReadLimit