instance creation
driver: aDriver on: aStringOrStream readLimit: anInteger
	^self new
		setDriver: aDriver
		stream:
			(aStringOrStream isStream
				ifTrue: [aStringOrStream]
				ifFalse: [aStringOrStream readStream])
		readLimit: anInteger