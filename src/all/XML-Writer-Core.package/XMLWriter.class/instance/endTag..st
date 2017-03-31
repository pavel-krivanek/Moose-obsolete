writing - unsafe
endTag: aName
	"Returns a new XMLUnsafeEndTagWriter for writing an end tag with the specified
	name to close an element started by a #startTag* message.

	Use the #tag* messages instead if possible."

	^ self endTag name: aName