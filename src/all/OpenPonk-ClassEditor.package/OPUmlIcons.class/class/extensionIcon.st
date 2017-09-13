accessing - icons
extensionIcon
	"Private - Generated method"
	^ self icons
		at: #extensionIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self extensionIconContents readStream) ]