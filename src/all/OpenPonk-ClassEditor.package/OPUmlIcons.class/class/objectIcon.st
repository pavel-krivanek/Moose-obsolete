accessing - icons
objectIcon
	"Private - Generated method"
	^ self icons
		at: #objectIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self objectIconContents readStream) ]