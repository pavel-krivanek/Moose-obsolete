instance creation
on: aStringOrStream readLimit: anInteger
	^ self new
		setStream:
			(aStringOrStream isStream
				ifTrue: [aStringOrStream]
				ifFalse: [aStringOrStream readStream])
		readLimit: anInteger