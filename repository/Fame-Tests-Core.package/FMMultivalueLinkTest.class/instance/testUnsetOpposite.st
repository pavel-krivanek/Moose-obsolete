running
testUnsetOpposite
	| opposite prop |
	opposite := FM3PropertyDescription new.
	prop := FM3PropertyDescription new.
	opposite opposite isNil should beTrue.
	prop opposite isNil should beTrue.
	prop opposite: opposite.
	opposite opposite: nil.
	opposite opposite isNil should beTrue.
	prop opposite isNil should beTrue