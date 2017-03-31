indentation
_indent
	^
	"
	 recognize prefix, than indent and return that indent.
	 Use 'and' in order to return back to the beginning of a line and than
	 push the indent
	"
	(prefix, #blank asParser plus flatten ==> #second) and pushAsParser