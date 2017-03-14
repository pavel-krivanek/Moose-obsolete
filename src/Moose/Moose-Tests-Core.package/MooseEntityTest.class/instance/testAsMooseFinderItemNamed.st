tests
testAsMooseFinderItemNamed
	| entity1 entity2 model model2 |
	entity1 := FAMIXType new.
	entity1 name: 'hello'.
	entity2 := FAMIXType new.
	entity2 name: 'hello2'.
	model := MooseModel new.
	model
		addAll:
			{entity1.
			entity2}.
	self assert: (model asMooseFinderItemNamed: 'bouba' in: model) == model.
	model2 := entity1 asMooseFinderItemNamed: 'bouba' in: model.
	self assert: model2 class == FAMIXTypeGroup.
	self assert: model2 name equals: 'Bouba: hello'.
	self assert: model2 entities asArray equals: {entity1}