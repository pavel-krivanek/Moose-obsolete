running
testCompositeRemoveLeaf
	t metamodel addAll: t metaMetamodel elements.
	t metamodel compositeRemove: t metaMetamodel properties anyOne.	"= a root element."
	t metamodel size should = (t metaMetamodel size - 1)