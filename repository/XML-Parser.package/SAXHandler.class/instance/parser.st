parsing
parser
	"returns a new XMLParser object for this handler"

	^ self parserClass
		driver: (self driverClass saxHandler: self)
		on: self input