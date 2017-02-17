test
testUnitVector
	"comment stating purpose of message"

	"no longer double in pharo"

	"self assert: v unitVector length asFloat = 1.0d asFloat.
	self assert: w unitVector length asFloat = 1.0d asFloat"

	| tmp |
	self assert: v unitVector length asFloat equals: 1.0	"here,something special in pharo. Those two floats have the same values but the egality test return false "	"self assert: (tmp := w unitVector length asFloat) = 1.0."