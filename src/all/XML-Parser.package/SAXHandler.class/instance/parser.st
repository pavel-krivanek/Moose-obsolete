parsing
parser
	"returns a new XMLParser object for this handler"

	| parser |

	hasParser
		ifTrue: [self errorInstancesCannotHaveMultipleParsers].
	hasParser := true.

	parser :=
		self parserClass
			driver: (self driverClass saxHandler: self)
			on: self input.
	self initializeParser: parser.

	^ parser.