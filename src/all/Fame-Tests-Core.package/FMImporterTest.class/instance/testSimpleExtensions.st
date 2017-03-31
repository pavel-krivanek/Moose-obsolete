running
testSimpleExtensions
	self testSimpleMetamodel.
	tower metamodel importString: self class simpleCompositeMetamodelExtension.
	tower metamodel packages size should = 2.
	tower metamodel classes size should = 2.
	tower metamodel properties size should = 3.
	(tower metamodel elementNamed: 'EG.Leaf.name') package should = (tower metamodel elementNamed: 'MORE')