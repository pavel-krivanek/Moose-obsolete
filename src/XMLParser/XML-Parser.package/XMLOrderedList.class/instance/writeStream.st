converting
writeStream
	"This is not supported because the collection already supports WriteStream
	behavior with #addLast: and the Pharo/Squeak WriteStream works by expanding
	its collection with #grownBy:, which should fill the new space with nils,
	but some subclasses cannot contain nil"

	self shouldNotImplement