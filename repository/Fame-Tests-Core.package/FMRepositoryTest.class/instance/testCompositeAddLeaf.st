running
testCompositeAddLeaf
	t metamodel compositeAdd: t metaMetamodel properties anyOne.	"Properties are leaves."
	t metamodel size should = 1