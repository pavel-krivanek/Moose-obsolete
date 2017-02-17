accessing
streamConverter: aStreamConverter
	streamConverter :=
		aStreamConverter ifNil: [XMLStreamConverter null]