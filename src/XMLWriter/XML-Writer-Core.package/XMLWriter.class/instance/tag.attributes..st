writing
tag: aName attributes: aDictionaryOrArray
	"returns a new XMLTagWriter for writing an element with the specified name and
	attributes that supports embedding markup using #with: and automatic end tag
	generation"

	^ (self tag: aName)
		attributes: aDictionaryOrArray