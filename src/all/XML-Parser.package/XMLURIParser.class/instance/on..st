initialization
on: aStringOrStream
	readStream :=
		aStringOrStream isStream
			ifTrue: [aStringOrStream]
			ifFalse: [aStringOrStream readStream].
	writeStream := (String new: 64) writeStream.