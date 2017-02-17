accessing
entityCache
	"a class variable so it's shared by all subclasses, but lazy initialized
	so it isn't initialized unless needed"
	^ EntityCache
		ifNil: [EntityCache := XMLKeyValueCache maxSize: 64]