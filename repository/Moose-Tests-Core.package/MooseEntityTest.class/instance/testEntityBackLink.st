tests
testEntityBackLink
	"self debug: #testEntityBackLink"
	
	| e r |
	e := MooseEntity new.
	r := e privateState entity.
	self assert: (r == e)