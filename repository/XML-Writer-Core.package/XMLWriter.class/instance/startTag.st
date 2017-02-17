writing - unsafe
startTag
	"Returns a new XMLUnsafeStartTagWriter for writing a start tag that does
	not support embedding or automatic end tag generation.

	Use the #tag* messages instead if possible."

	^ self pushNewMarkupWriter: XMLUnsafeStartTagWriter