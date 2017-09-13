accessing - icons
directedAssociationIcon
	"Private - Generated method"
	^ self icons
		at: #directedAssociationIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self directedAssociationIconContents readStream) ]