writing - unsafe
startTag: aName
	"Returns a new XMLUnsafeStartTagWriter for writing a start tag with the
	specified name that does not support embedding or automatic end tag generation.

	Use the #tag* messages instead if possible."

	^ self startTag name: aName