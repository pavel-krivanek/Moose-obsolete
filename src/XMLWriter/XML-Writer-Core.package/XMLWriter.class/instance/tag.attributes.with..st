writing
tag: aName attributes: aDictionaryOrArray with: aStringOrCollectionOrBlock
	"writes an element with the specified name, attributes, and embedded markup"

	^ (self tag: aName)
		attributes: aDictionaryOrArray;
		with: aStringOrCollectionOrBlock