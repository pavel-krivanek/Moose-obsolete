benchmark
benchmark8
	"
	XMLParserTest new benchmark8
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [SAX2ElementParser parse: self addressBookXML]] timeToRun