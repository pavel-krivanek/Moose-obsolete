accessing - icons
enumIcon
	"Private - Generated method"
	^ self icons
		at: #enumIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self enumIconContents readStream) ]