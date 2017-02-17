running
testHeroTwin
	| a b c |
	a := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	b := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	c := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	a twin isCollection should beFalse.
	a twin isNil should beTrue.
	b twin isCollection should beFalse.
	b twin isNil should beTrue.
	c twin isCollection should beFalse.
	c twin isNil should beTrue.
	a twin: b.
	a twin should = b.
	b twin should = a.
	c twin isNil should beTrue.
	a twin: c.
	a twin should = c.
	b twin isNil should beTrue.
	c twin should = a.
	b twin: c.
	a twin isNil should beTrue.
	b twin should = c.
	c twin should = b.
	b twin: nil.
	a twin isNil should beTrue.
	b twin isNil should beTrue.
	c twin isNil should beTrue