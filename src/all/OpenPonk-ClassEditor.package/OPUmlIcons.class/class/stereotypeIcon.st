accessing - icons
stereotypeIcon
	"Private - Generated method"
	^ self icons
		at: #stereotypeIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self stereotypeIconContents readStream) ]