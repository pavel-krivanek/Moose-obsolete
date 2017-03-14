benchmark
benchmark2
	"
	XMLParserTest new benchmark2
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [XMLDOMParser parse: self addressBookXML]] timeToRun