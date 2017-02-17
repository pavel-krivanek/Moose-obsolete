initialization
on: aStringOrStream
	readStream :=
		aStringOrStream isStream
			ifTrue: [aStringOrStream]
			ifFalse: [aStringOrStream readStream]