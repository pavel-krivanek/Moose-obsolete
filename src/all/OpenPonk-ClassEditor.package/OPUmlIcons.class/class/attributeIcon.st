accessing - icons
attributeIcon
	"Private - Generated method"
	^ self icons
		at: #attributeIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self attributeIconContents readStream) ]