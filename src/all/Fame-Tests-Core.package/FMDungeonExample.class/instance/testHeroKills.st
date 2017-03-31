running
testHeroKills
	| a b x y |
	a := (t metamodel elementNamed: 'RPG.Dragon') createInstance.
	b := (t metamodel elementNamed: 'RPG.Dragon') createInstance.
	x := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	y := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	a killedBy isCollection should beTrue.
	a killedBy isEmpty should beTrue.
	b killedBy isCollection should beTrue.
	b killedBy isEmpty should beTrue.
	x kills isCollection should beTrue.
	x kills isEmpty should beTrue.
	y kills isCollection should beTrue.
	y kills isEmpty should beTrue.
	x kills add: a.
	a killedBy should include: x.
	a killedBy size should = 1.
	b killedBy size should = 0.
	x kills size should = 1.
	y kills size should = 0.
	y kills add: a.
	a killedBy should include: y.
	a killedBy size should = 2.
	b killedBy size should = 0.
	x kills size should = 1.
	y kills size should = 1.
	x kills add: b.
	b killedBy should include: x.
	a killedBy size should = 2.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 1.
	y kills add: b.
	b killedBy should include: y.
	a killedBy size should = 2.
	b killedBy size should = 2.
	x kills size should = 2.
	y kills size should = 2.
	y kills add: b.	"repeated adding should not change anything"
	a killedBy size should = 2.
	b killedBy size should = 2.
	x kills size should = 2.
	y kills size should = 2.
	y kills remove: b.
	b killedBy should not include: y.
	a killedBy size should = 2.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 1.
	y kills remove: a.
	a killedBy should not include: y.
	a killedBy size should = 1.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 0