benchmark
benchmark7
	"
	XMLParserTest new benchmark7
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [SAX2Parser parse: self addressBookXML]] timeToRun