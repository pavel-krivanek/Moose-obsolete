initialization
on: aStringOrStream
	super on: aStringOrStream.

	elementHandlerFactory := self defaultElementHandlerFactoryClass new.
	elementHandlerFactoryMapper := self defaultElementHandlerFactoryMapperClass new.