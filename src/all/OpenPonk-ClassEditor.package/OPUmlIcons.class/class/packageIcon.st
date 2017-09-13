accessing - icons
packageIcon
	"Private - Generated method"
	^ self icons
		at: #packageIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageIconContents readStream) ]