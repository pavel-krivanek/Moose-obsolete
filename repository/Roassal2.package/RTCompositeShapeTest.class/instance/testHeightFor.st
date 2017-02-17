tests
testHeightFor

	| shape e |
	shape := RTCompositeShape new.
	shape allOfSameSizeWithPadding.
	shape add: (RTBox new color: Color white; borderWidth: 2; borderColor: Color black).
	shape add: (RTLabel new height: 30).
	shape height: 50.
	e := shape elementOn: 'hello'.
	"RTView new add: e; open"
	
	