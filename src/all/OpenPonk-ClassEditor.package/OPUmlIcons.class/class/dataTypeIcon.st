accessing - icons
dataTypeIcon
	"Private - Generated method"
	^ self icons
		at: #dataTypeIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self dataTypeIconContents readStream) ]