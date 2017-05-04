initialization
initializeForEncoding: anEncodingName
	super initializeForEncoding: anEncodingName.
 
	self
		setEncoding: anEncodingName
		textConverter:
			(self class textConverterClassForEncoding: anEncodingName) new.