accessing - icons
ruleIcon
	"Private - Generated method"
	^ self icons
		at: #ruleIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self ruleIconContents readStream) ]