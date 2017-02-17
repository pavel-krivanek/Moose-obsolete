running
testMenageATrois
	| me you her |
	me := FM3PropertyDescription new.
	you := FM3PropertyDescription new.
	her := FM3PropertyDescription new.
	me opposite isNil should beTrue.
	you opposite isNil should beTrue.
	her opposite isNil should beTrue.
	me opposite: you.
	me opposite should = you.
	you opposite should = me.
	her opposite isNil should beTrue.
	me opposite: her.
	me opposite should = her.
	you opposite isNil should beTrue.
	her opposite should = me