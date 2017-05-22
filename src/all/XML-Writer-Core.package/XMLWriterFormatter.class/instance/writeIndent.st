writing
writeIndent
	"use #to:do: over #timesRepeat: for speed"
	1 to: self currentIndentLevel do: [:i |
		self writer nextPutAll: self indentString]