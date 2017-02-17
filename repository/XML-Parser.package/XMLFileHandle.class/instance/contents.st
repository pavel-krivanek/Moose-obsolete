accessing
contents
	^ self readStreamDo: [:readStream | readStream upToEnd]