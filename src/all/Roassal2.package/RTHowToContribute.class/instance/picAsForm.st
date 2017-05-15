instance creation
picAsForm

	^ Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: RTHowToContribute new pic readStream)