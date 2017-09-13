accessing - icons
literalIcon
	"Private - Generated method"
	^ self icons
		at: #literalIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self literalIconContents readStream) ]