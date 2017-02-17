benchmark
benchmark5
	"
	XMLParserTest new benchmark5
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [XMLDOMParser parse: self addressBookNamespacedXML]] timeToRun