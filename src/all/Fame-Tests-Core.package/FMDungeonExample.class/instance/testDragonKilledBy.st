running
testDragonKilledBy
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
	a killedBy add: x.
	a killedBy should include: x.
	a killedBy size should = 1.
	b killedBy size should = 0.
	x kills size should = 1.
	y kills size should = 0.
	a killedBy add: y.
	a killedBy should include: y.
	a killedBy size should = 2.
	b killedBy size should = 0.
	x kills size should = 1.
	y kills size should = 1.
	b killedBy add: x.
	b killedBy should include: x.
	a killedBy size should = 2.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 1.
	b killedBy add: y.
	b killedBy should include: y.
	a killedBy size should = 2.
	b killedBy size should = 2.
	x kills size should = 2.
	y kills size should = 2.
	b killedBy add: y.	"repeated adding should not change anything"
	a killedBy size should = 2.
	b killedBy size should = 2.
	x kills size should = 2.
	y kills size should = 2.
	b killedBy remove: y.
	b killedBy should not include: y.
	a killedBy size should = 2.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 1.
	a killedBy remove: y.
	a killedBy should not include: y.
	a killedBy size should = 1.
	b killedBy size should = 1.
	x kills size should = 2.
	y kills size should = 0