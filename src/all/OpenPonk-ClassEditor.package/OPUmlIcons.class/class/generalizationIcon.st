accessing - icons
generalizationIcon
	"Private - Generated method"
	^ self icons
		at: #generalizationIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self generalizationIconContents readStream) ]