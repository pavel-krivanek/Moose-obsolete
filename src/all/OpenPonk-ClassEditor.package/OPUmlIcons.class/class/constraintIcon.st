accessing - icons
constraintIcon
	"Private - Generated method"
	^ self icons
		at: #constraintIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self constraintIconContents readStream) ]