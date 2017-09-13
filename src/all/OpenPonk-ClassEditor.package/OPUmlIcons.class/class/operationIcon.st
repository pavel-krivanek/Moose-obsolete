accessing - icons
operationIcon
	"Private - Generated method"
	^ self icons
		at: #operationIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self operationIconContents readStream) ]