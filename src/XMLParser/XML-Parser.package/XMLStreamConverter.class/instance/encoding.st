accessing
encoding
	^ encoding ifNil: [encoding := self class anyEncodingName]