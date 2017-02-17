writing - unsafe
endTag
	"Returns a new XMLUnsafeEndTagWriter for writing an end tag to close an element
	started by a #startTag* message.

	Use the #tag* messages instead if possible."

	^ self pushNewMarkupWriter: XMLUnsafeEndTagWriter