accessing
encoding: anEncodingName
	super encoding: anEncodingName.
	self textConverter:
		(self class textConverterClassForEncoding: anEncodingName) new.