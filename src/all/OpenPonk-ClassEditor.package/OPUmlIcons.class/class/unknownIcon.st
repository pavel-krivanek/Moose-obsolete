accessing - icons
unknownIcon
	"Private - Generated method"
	^ self icons
		at: #unknownIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self unknownIconContents readStream) ]