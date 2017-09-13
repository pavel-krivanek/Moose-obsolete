accessing - icons
diagramIcon
	"Private - Generated method"
	^icons 
			at: #diagramIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self diagramIconContents readStream) ].