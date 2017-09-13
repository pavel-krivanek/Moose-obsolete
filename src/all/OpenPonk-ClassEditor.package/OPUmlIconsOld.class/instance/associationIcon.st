accessing - icons
associationIcon
	"Private - Generated method"
	^icons 
			at: #associationIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self associationIconContents readStream) ].