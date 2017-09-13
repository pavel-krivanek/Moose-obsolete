accessing - icons
generalizationIcon
	"Private - Generated method"
	^icons 
			at: #generalizationIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self generalizationIconContents readStream) ].