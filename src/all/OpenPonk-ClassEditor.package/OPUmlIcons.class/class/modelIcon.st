accessing - icons
modelIcon
	"Private - Generated method"
	^ self icons
		at: #modelIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self modelIconContents readStream) ]