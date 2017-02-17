writing
tag
	"returns a new XMLTagWriter for writing an element that supports embedding
	markup using #with: and automatic end tag generation"

	^ self pushNewMarkupWriter: XMLTagWriter