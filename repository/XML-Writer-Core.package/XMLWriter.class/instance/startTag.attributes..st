writing - unsafe
startTag: aName attributes: aDictionaryOrArray
	"Returns a new XMLUnsafeStartTagWriter for writing a start tag with the
	specified name and attributes that does not support embedding or automatic
	end tag generation.
	
	Use the #tag* messages instead if possible."

	^ (self startTag: aName)
		attributes: aDictionaryOrArray