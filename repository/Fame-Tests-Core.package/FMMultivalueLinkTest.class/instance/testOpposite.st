running
testOpposite
	| opposite prop |
	opposite := FM3PropertyDescription new.
	prop := FM3PropertyDescription new.
	opposite opposite isNil should beTrue.
	prop opposite isNil should beTrue.
	prop opposite: opposite.
	opposite opposite should = prop.
	prop opposite should = opposite