accessing
streamConverter
	^ streamConverter ifNil: [streamConverter := XMLStreamConverter default]