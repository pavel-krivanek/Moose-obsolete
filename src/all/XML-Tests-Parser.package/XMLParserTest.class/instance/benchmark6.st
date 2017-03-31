benchmark
benchmark6
	"
	XMLParserTest new benchmark6
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [XMLDOMParser parse: self addressBookNamespacePrefixedXML]] timeToRun