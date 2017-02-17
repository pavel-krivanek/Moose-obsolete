running
testSimpleMetamodel
	tower metamodel importString: self class simpleCompositeMetamodel.
	tower metamodel packages size should = 1.
	tower metamodel classes size should = 2.
	tower metamodel properties size should = 2.
	(tower metamodel elementNamed: 'EG.Container.children') hasOpposite should beTrue.
	(tower metamodel elementNamed: 'EG.Leaf.parent') hasOpposite should beTrue.
	(tower metamodel elementNamed: 'EG.Container.children') opposite should =
			(tower metamodel elementNamed: 'EG.Leaf.parent')