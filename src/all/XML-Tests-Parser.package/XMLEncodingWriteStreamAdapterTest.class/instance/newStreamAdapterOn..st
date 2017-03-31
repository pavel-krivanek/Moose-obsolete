instance creation
newStreamAdapterOn: aStream
	^ (super newStreamAdapterOn: aStream)
		streamConverter: self streamConverterClass new