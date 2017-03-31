public
highlightObject: aBlock
	"aBlock returns an object to highlight"
	self highlight: [ :oo | Array with: (aBlock rtValue: oo) ]