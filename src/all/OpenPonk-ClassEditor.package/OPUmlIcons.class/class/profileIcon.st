accessing - icons
profileIcon
	"Private - Generated method"
	^ self icons
		at: #profileIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self profileIconContents readStream) ]