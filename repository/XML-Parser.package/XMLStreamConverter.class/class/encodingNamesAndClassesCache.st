private
encodingNamesAndClassesCache
	"a class variable so it's shared by all subclasses, but lazy initialized
	so it isn't initialized unless needed"
	^ EncodingNamesAndClassesCache
		ifNil: [EncodingNamesAndClassesCache := XMLKeyValueCache maxSize: 128]