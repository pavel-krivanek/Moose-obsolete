accessing - icons
commentIcon
	"Private - Generated method"
	^ self icons
		at: #commentIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self commentIconContents readStream) ]