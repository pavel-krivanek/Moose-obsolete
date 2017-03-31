instance creation
picAsForm

	^ Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: RTHowToContributeRoassal new pic readStream)