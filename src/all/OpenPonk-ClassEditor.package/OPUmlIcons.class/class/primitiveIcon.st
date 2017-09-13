accessing - icons
primitiveIcon
	"Private - Generated method"
	^ self icons
		at: #primitiveIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self primitiveIconContents readStream) ]